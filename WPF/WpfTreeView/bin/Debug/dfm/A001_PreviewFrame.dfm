inherited A001_Preview: TA001_Preview
  Width = 1090
  Height = 652
  inherited xxxDBGrid: TxxxDBGrid
    Top = 55
    Width = 1090
    Height = 597
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    AdvSettings.AutoFilter = True
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ROW_NUM'
        PickList.Strings = ()
        Title.Caption = '№ строки'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F1'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'A'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F2'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'B'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F3'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'C'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F4'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'D'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F5'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'E'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F6'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'F'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F7'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'G'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F8'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'H'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F9'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'I'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F10'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'J'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F11'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'K'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F12'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'L'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F13'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'M'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F14'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'N'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F15'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'O'
        Width = 60
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 1090
    Enabled = False
    Visible = False
  end
  object paFilter: TPanel [2]
    Left = 0
    Top = 25
    Width = 1090
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 76
      Height = 13
      Caption = 'Первая строка'
    end
    object cbStartRow: TComboBox
      Left = 92
      Top = 5
      Width = 89
      Height = 21
      Style = csDropDownList
      DropDownCount = 15
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbStartRowChange
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15')
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT 1 AS ROW_NUM,'
      #39' '#39' AS F1,'
      #39' '#39' AS F2,'
      #39' '#39' AS F3,'
      #39' '#39' AS F4,'
      #39' '#39' AS F5,'
      #39' '#39' AS F6,'
      #39' '#39' AS F7,'
      #39' '#39' AS F8,'
      #39' '#39' AS F9,'
      #39' '#39' AS F10,'
      #39' '#39' AS F11,'
      #39' '#39' AS F12,'
      #39' '#39' AS F13,'
      #39' '#39' AS F14,'
      #39' '#39' AS F15'
      'FROM DUAL'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000001000000007000000524F575F4E554D01000000000002000000463101
      0000000000020000004632010000000000020000004633010000000000020000
      0046340100000000000200000046350100000000000200000046360100000000
      0002000000463701000000000002000000463801000000000002000000463901
      0000000000030000004631300100000000000300000046313101000000000003
      0000004631320100000000000300000046313301000000000003000000463134
      01000000000003000000463135010000000000}
    object odsListROW_NUM: TFloatField
      FieldName = 'ROW_NUM'
    end
    object odsListF1: TStringField
      FieldName = 'F1'
      Size = 255
    end
    object odsListF2: TStringField
      FieldName = 'F2'
      Size = 255
    end
    object odsListF3: TStringField
      FieldName = 'F3'
      Size = 255
    end
    object odsListF4: TStringField
      FieldName = 'F4'
      Size = 255
    end
    object odsListF5: TStringField
      FieldName = 'F5'
      Size = 255
    end
    object odsListF6: TStringField
      FieldName = 'F6'
      Size = 255
    end
    object odsListF7: TStringField
      FieldName = 'F7'
      Size = 255
    end
    object odsListF8: TStringField
      FieldName = 'F8'
      Size = 255
    end
    object odsListF9: TStringField
      FieldName = 'F9'
      Size = 255
    end
    object odsListF10: TStringField
      FieldName = 'F10'
      Size = 255
    end
    object odsListF11: TStringField
      FieldName = 'F11'
      Size = 255
    end
    object odsListF12: TStringField
      FieldName = 'F12'
      Size = 255
    end
    object odsListF13: TStringField
      FieldName = 'F13'
      Size = 255
    end
    object odsListF14: TStringField
      FieldName = 'F14'
      Size = 255
    end
    object odsListF15: TStringField
      FieldName = 'F15'
      Size = 255
    end
  end
  object oqDoBeforeLoad: TOracleQuery
    SQL.Strings = (
      'BEGIN '
      
        '  DS_BOP_BOSS.PK_BOP_LOAD.P_DO_BEFORE ( :I_T100_ID, :I_T055_ID )' +
        ';'
      '  COMMIT; '
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000A0000003A495F543130305F494404000000000000000000
      00000A0000003A495F543035355F4944040000000000000000000000}
    Left = 280
    Top = 248
  end
end

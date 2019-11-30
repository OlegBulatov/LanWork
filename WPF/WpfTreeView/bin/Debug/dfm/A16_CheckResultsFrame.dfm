inherited A16_CheckResults: TA16_CheckResults
  Width = 1180
  Height = 266
  Align = alClient
  inherited xxxDBGrid: TxxxDBGrid
    Top = 91
    Width = 1180
    Height = 175
    AdvSettings.Indexes = <
      item
        FieldName = 'BANK_CODE'
        SortType = stAsc
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'BANK_CODE'
        PickList.Strings = ()
        Title.Caption = 'Код КО'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANK_NAME'
        PickList.Strings = ()
        Title.Caption = 'Название КО'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FIELD_1'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FIELD_2'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FIELD_3'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FIELD_4'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FIELD_5'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FIELD_6'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FIELD_7'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FIELD_8'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FIELD_9'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LINE_ERROR'
        PickList.Strings = ()
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T055_ID'
        PickList.Strings = ()
        Visible = False
      end>
  end
  inherited paToolButton: TPanel
    Top = 66
    Width = 1180
    inherited tlbList: TToolBar
      inherited tbSeparator02: TToolButton
        Visible = False
      end
    end
  end
  inline Filters: TA16_CheckResultsFilter [2]
    Width = 1180
    Align = alTop
    TabOrder = 2
    inherited GroupBox1: TGroupBox
      Width = 1180
      inherited Panel1: TPanel
        Width = 653
        inherited Button1: TButton
          Action = actRefresh
        end
      end
      inherited paFilterItems: TPanel
        inherited BanksReportedFilter: TA16_BanksReportedFilter
          inherited cb: TCheckBox
            Checked = False
            State = cbUnchecked
          end
        end
      end
    end
  end
  inherited actList: TActionList [3]
  end
  inherited dsList: TDataSource [4]
  end
  inherited odsList: TOracleDataSet [5]
    SQL.Strings = (
      'select T055_ID,'
      '       BANK_CODE,'
      '       BANK_NAME,'
      '       FIELD_1,'
      '       FIELD_2,'
      '       FIELD_3,'
      '       FIELD_4,'
      '       FIELD_5,'
      '       FIELD_6,'
      '       FIELD_7,'
      '       FIELD_8,'
      '       FIELD_9,'
      '       LINE_ERROR'
      'FROM   V_410_CHECK_401'
      '')
    QBEDefinition.QBEFieldDefs = {
      040000000D00000007000000543035355F49440100000000000900000042414E
      4B5F434F44450100000000000900000042414E4B5F4E414D4501000000000007
      0000004649454C445F31010000000000070000004649454C445F320100000000
      00070000004649454C445F33010000000000070000004649454C445F34010000
      000000070000004649454C445F35010000000000070000004649454C445F3601
      0000000000070000004649454C445F37010000000000070000004649454C445F
      38010000000000070000004649454C445F390100000000000A0000004C494E45
      5F4552524F52010000000000}
    BeforeOpen = odsListBeforeOpen
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListBANK_CODE: TStringField
      FieldName = 'BANK_CODE'
      Size = 9
    end
    object odsListBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 45
    end
    object odsListFIELD_1: TStringField
      FieldName = 'FIELD_1'
      Size = 7
    end
    object odsListFIELD_2: TStringField
      FieldName = 'FIELD_2'
      Size = 7
    end
    object odsListFIELD_3: TStringField
      FieldName = 'FIELD_3'
      Size = 7
    end
    object odsListFIELD_4: TStringField
      FieldName = 'FIELD_4'
      Size = 7
    end
    object odsListFIELD_5: TStringField
      FieldName = 'FIELD_5'
      Size = 7
    end
    object odsListFIELD_6: TStringField
      FieldName = 'FIELD_6'
      Size = 7
    end
    object odsListFIELD_7: TStringField
      FieldName = 'FIELD_7'
      Size = 7
    end
    object odsListFIELD_8: TStringField
      FieldName = 'FIELD_8'
      Size = 7
    end
    object odsListFIELD_9: TStringField
      FieldName = 'FIELD_9'
      Size = 7
    end
    object odsListLINE_ERROR: TStringField
      FieldName = 'LINE_ERROR'
      Size = 1
    end
  end
  inherited PopupMenu: TPopupMenu [6]
  end
  inherited oqAdd: TOracleQuery [7]
  end
  inherited oqUpdate: TOracleQuery [8]
  end
  inherited oqDelete: TOracleQuery [9]
  end
  object oqPeriodNames: TOracleQuery
    SQL.Strings = (
      'declare'
      '  v_FIELD_1'#9'VARCHAR2(55);'
      '  v_FIELD_2'#9'VARCHAR2(55);'
      '  v_FIELD_3'#9'VARCHAR2(55);'
      '  v_FIELD_4'#9'VARCHAR2(55);'
      '  v_FIELD_5'#9'VARCHAR2(55);'
      '  v_FIELD_6'#9'VARCHAR2(55);'
      '  v_FIELD_7'#9'VARCHAR2(55);'
      '  v_FIELD_8'#9'VARCHAR2(55);'
      '  v_FIELD_9'#9'VARCHAR2(55);'
      'begin'
      '  Pk_410_Check.p_get_period_names(:T055_ID,'
      '                                  v_FIELD_1,'
      '                                  v_FIELD_2,'
      '                                  v_FIELD_3,'
      '                                  v_FIELD_4,'
      '                                  v_FIELD_5,'
      '                                  v_FIELD_6,'
      '                                  v_FIELD_7,'
      '                                  v_FIELD_8,'
      '                                  v_FIELD_9'
      '                                 );'
      '  :FIELD_1 := v_FIELD_1;'
      '  :FIELD_2 := v_FIELD_2;'
      '  :FIELD_3 := v_FIELD_3;'
      '  :FIELD_4 := v_FIELD_4;'
      '  :FIELD_5 := v_FIELD_5;'
      '  :FIELD_6 := v_FIELD_6;'
      '  :FIELD_7 := v_FIELD_7;'
      '  :FIELD_8 := v_FIELD_8;'
      '  :FIELD_9 := v_FIELD_9;'
      'end;'
      '  ')
    Session = dmMain.OracleSession
    Variables.Data = {
      030000000A000000080000003A543035355F4944040000000000000000000000
      080000003A4649454C445F31050000000000000000000000080000003A464945
      4C445F32050000000000000000000000080000003A4649454C445F3305000000
      0000000000000000080000003A4649454C445F34050000000000000000000000
      080000003A4649454C445F35050000000000000000000000080000003A464945
      4C445F36050000000000000000000000080000003A4649454C445F3705000000
      0000000000000000080000003A4649454C445F38050000000000000000000000
      080000003A4649454C445F39050000000000000000000000}
    Left = 196
    Top = 248
  end
end

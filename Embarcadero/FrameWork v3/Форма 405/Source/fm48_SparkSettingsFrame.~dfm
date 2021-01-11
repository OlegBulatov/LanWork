inherited fm48_SparkSettings: Tfm48_SparkSettings
  inherited xxxDBGrid: TxxxDBGrid
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = nil
    ReadOnly = False
    OnColExit = xxxDBGridColExit
    Columns = <
      item
        Expanded = False
        FieldName = 'T247_ID'
        PickList.Strings = ()
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T247_SYSTEM_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Системное имя'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'T247_DESCRIPTION'
        PickList.Strings = ()
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Поле'
        Width = 258
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T247_USER_NAME'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Название в файле'
        Width = 276
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T247_REQUIRED_WITH_CHANGEABLE'
        PickList.Strings = ()
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Обяз.'
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    inherited tlbExcel: TToolBar
      inherited tbSeparator03: TToolButton
        Enabled = False
        Visible = False
      end
    end
    inherited tlbSeach: TToolBar
      inherited tbSeparator04: TToolButton
        Visible = False
      end
      inherited tbSearch: TToolButton
        Enabled = False
        Visible = False
      end
    end
    inherited tlbSelect: TToolBar
      inherited tbSeparator07: TToolButton
        Enabled = False
        Visible = False
      end
      inherited tbSelect: TToolButton
        Enabled = False
        Visible = False
      end
    end
  end
  inherited actList: TActionList
    inherited actSelectAllRows: TAction
      Enabled = False
      Visible = False
    end
    inherited actShowSimpleFilter: TAction
      Enabled = False
      Visible = False
    end
    inherited actRemoveAllSettings: TAction
      Enabled = False
      Visible = False
    end
    inherited actUnSelectAllRows: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T247_ID,'
      '       T247_SYSTEM_NAME,'
      '       T247_USER_NAME,'
      '       T247_DESCRIPTION,'
      '       T247_REQUIRED,'
      '       T247_REQUIRED_WITH_CHANGEABLE'
      '  FROM V_SPARK_SETTINGS')
    QBEDefinition.QBEFieldDefs = {
      040000000600000007000000543234375F494401000000000010000000543234
      375F53595354454D5F4E414D450100000000000E000000543234375F55534552
      5F4E414D4501000000000010000000543234375F4445534352495054494F4E01
      00000000001D000000543234375F52455155495245445F574954485F4348414E
      474541424C450100000000000D000000543234375F5245515549524544010000
      000000}
    object odsListT247_ID: TFloatField
      FieldName = 'T247_ID'
    end
    object odsListT247_SYSTEM_NAME: TStringField
      FieldName = 'T247_SYSTEM_NAME'
      Size = 256
    end
    object odsListT247_USER_NAME: TStringField
      FieldName = 'T247_USER_NAME'
      Size = 256
    end
    object odsListT247_DESCRIPTION: TStringField
      FieldName = 'T247_DESCRIPTION'
      Size = 256
    end
    object odsListT247_REQUIRED_WITH_CHANGEABLE: TFloatField
      FieldName = 'T247_REQUIRED_WITH_CHANGEABLE'
    end
    object odsListT247_REQUIRED: TIntegerField
      FieldName = 'T247_REQUIRED'
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '   pkg_spark_settings.p_t247_update (:T247_ID,'
      '                              :T247_USER_NAME,'
      '                              :T247_REQUIRED);'
      'END;'
      '')
    Variables.Data = {
      0300000003000000080000003A543234375F4944030000000000000000000000
      0F0000003A543234375F555345525F4E414D450500000000000000000000000E
      0000003A543234375F5245515549524544030000000000000000000000}
  end
end

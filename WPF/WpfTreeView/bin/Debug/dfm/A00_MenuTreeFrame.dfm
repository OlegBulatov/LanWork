inherited A00_MenuTree: TA00_MenuTree
  Width = 606
  Height = 450
  inherited tvList: TTreeView
    Top = 0
    Width = 606
    Height = 450
  end
  inherited paToolButton: TPanel
    Width = 606
    Height = 0
    Enabled = False
    Visible = False
    inherited tlbNav: TToolBar
      Height = 0
      Enabled = False
    end
    inherited tlbList: TToolBar
      Height = 0
    end
    inherited tlbExcel: TToolBar
      Height = 0
    end
    inherited tlbSeach: TToolBar
      Height = 0
    end
    inherited tlbFilter: TToolBar
      Height = 0
    end
    inherited tlbSelect: TToolBar
      Height = 0
    end
  end
  inherited actList: TActionList
    Left = 44
    Top = 128
  end
  inherited dsList: TDataSource
    Left = 456
    Top = 155
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT R001_ID ID, '
      '       R001_PARENT_ID PARENT_ID, '
      '       R001_DISPL_NAME DISPLAY_NAME, '
      '       R001_IMAGE_INDEX IMAGE_INDEX,'
      '       R001_SELECTED_INDEX SELECT_INDEX,'
      '       '#39'T'#39' VISIBLE'
      'FROM   V_R001_TREE'
      '')
    QBEDefinition.QBEFieldDefs = {
      040000000600000002000000494401000000000009000000504152454E545F49
      440100000000000C000000444953504C41595F4E414D450100000000000B0000
      00494D4147455F494E4445580100000000000C00000053454C4543545F494E44
      45580100000000000700000056495349424C45010000000000}
    Left = 420
    Top = 157
    object odsListID: TFloatField
      FieldName = 'ID'
    end
    object odsListPARENT_ID: TFloatField
      FieldName = 'PARENT_ID'
    end
    object odsListDISPLAY_NAME: TStringField
      FieldName = 'DISPLAY_NAME'
      Size = 128
    end
    object odsListIMAGE_INDEX: TFloatField
      FieldName = 'IMAGE_INDEX'
    end
    object odsListSELECT_INDEX: TFloatField
      FieldName = 'SELECT_INDEX'
    end
    object odsListVISIBLE: TStringField
      FieldName = 'VISIBLE'
      Size = 1
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 12
    Top = 127
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 420
    Top = 194
  end
  object odsItemData: TOracleDataSet
    SQL.Strings = (
      'SELECT R001_ID ID, '
      '       R001_CLASS_NAME,'
      '       R001_MX_OPERATION'
      'FROM   V_R001_TREE'
      'WHERE  R001_ID = :R001_ID'
      '')
    ReadBuffer = 50
    Variables.Data = {
      0300000001000000080000003A523030315F4944040000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      04000000030000000200000049440100000000000F000000523030315F434C41
      53535F4E414D4501000000000011000000523030315F4D585F4F504552415449
      4F4E010000000000}
    Cursor = crHourGlass
    LockingMode = lmLockImmediate
    QueryAllRecords = False
    CommitOnPost = False
    Session = dmMain.OracleSession
    Left = 420
    Top = 227
    object odsItemDataID: TFloatField
      FieldName = 'ID'
    end
    object odsItemDataR001_CLASS_NAME: TStringField
      FieldName = 'R001_CLASS_NAME'
      Size = 64
    end
    object odsItemDataR001_MX_OPERATION: TStringField
      FieldName = 'R001_MX_OPERATION'
      Size = 64
    end
  end
end

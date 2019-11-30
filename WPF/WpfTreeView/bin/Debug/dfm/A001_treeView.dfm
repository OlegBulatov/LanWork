inherited fmTree408: TfmTree408
  Width = 644
  Height = 564
  inherited paTreeParent: TPanel
    Width = 644
    Height = 539
    inherited tvList: TTreeView
      Width = 640
      Height = 535
      OnClick = nil
      OnCollapsed = tvListCollapsed
      OnExpanded = tvListExpanded
    end
  end
  inherited paToolButton: TPanel
    Width = 644
    Visible = False
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T001_ID ID,'
      '       T001_CLASS_NAME,  '
      '       T001_PARENT_ID PARENT_ID, '
      '       T001_DISPL_NAME DISPLAY_NAME, '
      '       T001_IMAGE_INDEX IMAGE_INDEX,'
      '       T001_SELECTED_INDEX SELECT_INDEX,'
      '       '#39'T'#39' VISIBLE'
      'FROM   V_408_TREE')
    QBEDefinition.QBEFieldDefs = {
      040000000700000002000000494401000000000009000000504152454E545F49
      440100000000000C000000444953504C41595F4E414D450100000000000B0000
      00494D4147455F494E4445580100000000000C00000053454C4543545F494E44
      45580100000000000700000056495349424C450100000000000F000000543030
      315F434C4153535F4E414D45010000000000}
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
    object odsListT001_CLASS_NAME: TStringField
      FieldName = 'T001_CLASS_NAME'
      Size = 64
    end
  end
  inherited PopupMenu: TPopupMenu
    Left = 32
    Top = 155
  end
  inherited odsFetchRecord: TOracleDataSet
    Left = 360
    Top = 154
  end
  object odsItemData: TOracleDataSet
    SQL.Strings = (
      'SELECT T001_ID ID, '
      '       T001_CLASS_NAME,'
      '       T001_MX_OPERATION'
      'FROM   V_408_TREE'
      'WHERE  T001_ID = :T001_ID')
    ReadBuffer = 50
    Variables.Data = {
      0300000001000000080000003A543030315F4944040000000000000000000000}
    OracleDictionary.RequiredFields = False
    QBEDefinition.QBEFieldDefs = {
      04000000030000000200000049440100000000000F000000543030315F434C41
      53535F4E414D4501000000000011000000543030315F4D585F4F504552415449
      4F4E010000000000}
    Cursor = crHourGlass
    LockingMode = lmLockImmediate
    QueryAllRecords = False
    CommitOnPost = False
    Session = dmMain.OracleSession
    DesignActivation = True
    Left = 324
    Top = 283
    object odsItemDataID: TFloatField
      FieldName = 'ID'
    end
    object odsItemDataT001_CLASS_NAME: TStringField
      FieldName = 'T001_CLASS_NAME'
      Size = 64
    end
    object odsItemDataT001_MX_OPERATION: TStringField
      FieldName = 'T001_MX_OPERATION'
      Size = 64
    end
  end
end

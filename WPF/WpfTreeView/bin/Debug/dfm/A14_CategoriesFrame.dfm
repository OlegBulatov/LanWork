inherited A14_Categories: TA14_Categories
  Width = 1080
  Height = 666
  inherited paTreeParent: TPanel
    Width = 1080
    Height = 641
    Caption = ''
    object Splitter1: TSplitter [0]
      Left = 424
      Top = 0
      Width = 6
      Height = 637
      Cursor = crHSplit
    end
    inherited tvList: TTreeView
      Width = 424
      Height = 637
      Align = alLeft
      OnChange = tvListChange
      OnCustomDrawItem = tvListCustomDrawItem
    end
    object paDesc: TPanel
      Left = 430
      Top = 0
      Width = 646
      Height = 637
      Align = alClient
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 76
        Height = 13
        Caption = 'Наименование'
      end
      object Label2: TLabel
        Left = 8
        Top = 47
        Width = 50
        Height = 13
        Caption = 'Описание'
      end
      object Label3: TLabel
        Left = 8
        Top = 264
        Width = 79
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Ответственный'
      end
      object Label4: TLabel
        Left = 8
        Top = 304
        Width = 19
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Тип'
      end
      object DBMemo1: TDBMemo
        Left = 8
        Top = 61
        Width = 630
        Height = 195
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clBtnFace
        DataField = 'T100_DESC'
        DataSource = dsList
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 22
        Width = 630
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataField = 'DISPLAY_NAME'
        DataSource = dsList
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 278
        Width = 257
        Height = 21
        Anchors = [akLeft, akBottom]
        Color = clBtnFace
        DataField = 'T203_NAME'
        DataSource = dsList
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 318
        Width = 257
        Height = 21
        Anchors = [akLeft, akBottom]
        Color = clBtnFace
        DataField = 'T100_TYPE_DESC'
        DataSource = dsList
        TabOrder = 3
      end
    end
  end
  inherited paToolButton: TPanel
    Width = 1080
    inherited tlbList: TToolBar
      ShowCaptions = False
      Visible = True
      inherited tbUpdate: TToolButton
        Left = 35
      end
      inherited tbDelete: TToolButton
        Left = 62
      end
    end
    inherited tlbExcel: TToolBar
      Left = 431
    end
    inherited tlbSeach: TToolBar
      Left = 465
    end
    inherited tlbFilter: TToolBar
      Left = 350
    end
    inherited tlbSelect: TToolBar
      Left = 319
    end
  end
  inherited actList: TActionList
    inherited actAdd: TAction
      Enabled = True
      Visible = True
    end
    inherited actEdit: TAction
      Enabled = True
      Visible = True
    end
    inherited actDelete: TAction
      Enabled = True
      Visible = True
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '  T100_ID AS ID,'
      '  T100_PARENT_ID AS PARENT_ID,'
      '  T100_DISPL_NAME AS DISPLAY_NAME,'
      '  T100_ENABLED,'
      '  T100_POSITION,'
      '  T100_IMAGE_INDEX AS IMAGE_INDEX,'
      '  T100_SELECTED_INDEX AS SELECT_INDEX,'
      '  T100_HIERARCHY_NAME,'
      '  NODE_LEVEL,'
      '  '#39'T'#39' AS VISIBLE,'
      '  T100_TYPE,'
      '  T203_ID,'
      '  T100_DESC,'
      '  T100_TYPE_DESC,'
      '  T203_NAME,'
      '  T100_FLAG_IN,'
      '  T100_FLAG_OUT,'
      '  T100_DEF_INDUSTRY,'
      '  T100_DEF_REGION,'
      '  T100_DEF_COUNTRY,'
      '  T204_ID'
      'FROM DS_BOP_BOSS.VS_BOP_CATEGORIES'
      ' '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      04000000150000000C000000543130305F454E41424C45440100000000000D00
      0000543130305F504F534954494F4E01000000000013000000543130305F4849
      455241524348595F4E414D450100000000000A0000004E4F44455F4C4556454C
      01000000000002000000494401000000000009000000504152454E545F494401
      00000000000C000000444953504C41595F4E414D450100000000000B00000049
      4D4147455F494E4445580100000000000C00000053454C4543545F494E444558
      0100000000000700000056495349424C4501000000000009000000543130305F
      5459504501000000000007000000543230335F49440100000000000900000054
      3130305F444553430100000000000E000000543130305F545950455F44455343
      01000000000009000000543230335F4E414D450100000000000C000000543130
      305F464C41475F494E0100000000000D000000543130305F464C41475F4F5554
      01000000000011000000543130305F4445465F494E4455535452590100000000
      000F000000543130305F4445465F524547494F4E010000000000100000005431
      30305F4445465F434F554E54525901000000000007000000543230345F494401
      0000000000}
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
    object odsListT100_ENABLED: TStringField
      FieldName = 'T100_ENABLED'
      Size = 1
    end
    object odsListT100_POSITION: TFloatField
      FieldName = 'T100_POSITION'
    end
    object odsListIMAGE_INDEX: TFloatField
      FieldName = 'IMAGE_INDEX'
    end
    object odsListSELECT_INDEX: TFloatField
      FieldName = 'SELECT_INDEX'
    end
    object odsListT100_HIERARCHY_NAME: TStringField
      FieldName = 'T100_HIERARCHY_NAME'
      Size = 4000
    end
    object odsListNODE_LEVEL: TFloatField
      FieldName = 'NODE_LEVEL'
    end
    object odsListVISIBLE: TStringField
      FieldName = 'VISIBLE'
      Size = 1
    end
    object odsListT100_TYPE: TStringField
      FieldName = 'T100_TYPE'
      Size = 1
    end
    object odsListT203_ID: TFloatField
      FieldName = 'T203_ID'
    end
    object odsListT100_DESC: TStringField
      FieldName = 'T100_DESC'
      Size = 1000
    end
    object odsListT100_TYPE_DESC: TStringField
      FieldName = 'T100_TYPE_DESC'
      Size = 15
    end
    object odsListT203_NAME: TStringField
      FieldName = 'T203_NAME'
      Size = 255
    end
    object odsListT100_FLAG_IN: TStringField
      FieldName = 'T100_FLAG_IN'
      Size = 1
    end
    object odsListT100_FLAG_OUT: TStringField
      FieldName = 'T100_FLAG_OUT'
      Size = 1
    end
    object odsListT100_DEF_INDUSTRY: TStringField
      FieldName = 'T100_DEF_INDUSTRY'
      Size = 4
    end
    object odsListT100_DEF_REGION: TIntegerField
      FieldName = 'T100_DEF_REGION'
    end
    object odsListT100_DEF_COUNTRY: TIntegerField
      FieldName = 'T100_DEF_COUNTRY'
    end
    object odsListT204_ID: TFloatField
      FieldName = 'T204_ID'
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  DS_BOP_BOSS.PK_BOP_CATEGORIES.F_CATEGORIES_ADD ('
      
        '  :IO_T100_ID, :I_T100_PARENT_ID, :I_T100_DISPL_NAME, :I_T100_TY' +
        'PE,'
      '  :I_T203_ID, :I_T100_ENABLED, :IO_T100_POSITION,'
      '  :IO_T100_IMAGE_INDEX, :IO_T100_SELECTED_INDEX, :I_T100_DESC,'
      
        '  :I_T100_FLAG_IN, :I_T100_FLAG_OUT, :I_T100_DEF_INDUSTRY, :I_T1' +
        '00_DEF_REGION, :I_T100_DEF_COUNTRY,'
      '  :I_T204_ID'
      '  );'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      03000000100000000B0000003A494F5F543130305F4944040000000000000000
      000000110000003A495F543130305F504152454E545F49440400000000000000
      00000000120000003A495F543130305F444953504C5F4E414D45050000000000
      0000000000000C0000003A495F543130305F5459504505000000000000000000
      00000A0000003A495F543230335F49440400000000000000000000000F000000
      3A495F543130305F454E41424C4544050000000000000000000000110000003A
      494F5F543130305F504F534954494F4E04000000000000000000000014000000
      3A494F5F543130305F494D4147455F494E444558040000000000000000000000
      170000003A494F5F543130305F53454C45435445445F494E4445580400000000
      000000000000000C0000003A495F543130305F44455343050000000000000000
      0000000F0000003A495F543130305F464C41475F494E05000000000000000000
      0000100000003A495F543130305F464C41475F4F555405000000000000000000
      0000140000003A495F543130305F4445465F494E445553545259050000000000
      000000000000120000003A495F543130305F4445465F524547494F4E04000000
      0000000000000000130000003A495F543130305F4445465F434F554E54525904
      00000000000000000000000A0000003A495F543230345F494404000000000000
      0000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  DS_BOP_BOSS.PK_BOP_CATEGORIES.f_categories_update ('
      
        '  :I_T100_ID, :I_T100_PARENT_ID, :I_T100_DISPL_NAME, :I_T100_TYP' +
        'E,'
      '  :I_T203_ID, :I_T100_ENABLED,  :I_T100_DESC,'
      
        '  :I_T100_FLAG_IN, :I_T100_FLAG_OUT, :I_T100_DEF_INDUSTRY, :I_T1' +
        '00_DEF_REGION, :I_T100_DEF_COUNTRY,'
      '  :I_T204_ID'
      '  );'
      'END; '
      ' '
      ' ')
    Variables.Data = {
      030000000D000000110000003A495F543130305F504152454E545F4944040000
      000000000000000000120000003A495F543130305F444953504C5F4E414D4505
      00000000000000000000000C0000003A495F543130305F545950450500000000
      000000000000000A0000003A495F543230335F49440400000000000000000000
      000F0000003A495F543130305F454E41424C4544050000000000000000000000
      0C0000003A495F543130305F444553430500000000000000000000000A000000
      3A495F543130305F49440400000000000000000000000F0000003A495F543130
      305F464C41475F494E050000000000000000000000100000003A495F54313030
      5F464C41475F4F5554050000000000000000000000140000003A495F54313030
      5F4445465F494E445553545259050000000000000000000000120000003A495F
      543130305F4445465F524547494F4E040000000000000000000000130000003A
      495F543130305F4445465F434F554E5452590400000000000000000000000A00
      00003A495F543230345F4944040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN '
      
        '  DS_BOP_BOSS.PK_BOP_CATEGORIES.F_CATEGORIES_DELETE (:I_T100_ID)' +
        ';'
      'END;')
    Variables.Data = {
      03000000010000000A0000003A495F543130305F494404000000000000000000
      0000}
  end
end

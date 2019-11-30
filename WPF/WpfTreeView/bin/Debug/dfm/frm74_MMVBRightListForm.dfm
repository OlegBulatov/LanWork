inherited frm74_MMVBRightList: Tfrm74_MMVBRightList
  Caption = 'Эмиссии РТС'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Top = 18
    Height = 249
  end
  inherited paRight: TPanel
    Top = 18
    Height = 249
  end
  inherited paMain: TPanel
    Top = 18
    Height = 249
    inherited xxxDBGrid: TxxxDBGrid
      Height = 184
      AdvSettings.Indexes = <
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end
        item
          FieldName = 'T027_SEC_TYPE'
          SortType = stAsc
        end
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер ц.б.'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 209
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код эмитента'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип эмитента'
          Width = 70
          Visible = True
        end>
    end
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 0
    Width = 706
    Height = 18
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object Label2: TLabel
      Left = 7
      Top = 2
      Width = 104
      Height = 13
      Caption = 'Эмиссии из реестра'
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
      'SELECT'
      '  T081_ID,'
      '  T082_ID,'
      '  T030_ID,'
      '  T026_ID,'
      '  T026_SEC_REGN,'
      '  T027_ID,'
      '  T027_SEC_TYPE,'
      '  T028_ID,'
      '  T028_SHOT_NAME,'
      '  T025_CODE,'
      '  T025_SHOT_NAME,'
      '  T028_CODE'
      'FROM V_405_MMVB_EMISSIONS '
      'WHERE T081_ID = :T081_ID'
      '')
    Variables.Data = {
      0300000001000000080000003A543038315F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000C00000007000000543033305F494401000000000007000000543032
      365F49440100000000000D000000543032365F5345435F5245474E0100000000
      0007000000543032375F49440100000000000D000000543032375F5345435F54
      59504501000000000007000000543032385F49440100000000000E0000005430
      32385F53484F545F4E414D4501000000000009000000543032355F434F444501
      00000000000E000000543032355F53484F545F4E414D45010000000000090000
      00543032385F434F444501000000000007000000543038315F49440100000000
      0007000000543038325F4944010000000000}
    MasterFields = 'T081_ID'
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT025_CODE: TFloatField
      FieldName = 'T025_CODE'
      Required = True
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT081_ID: TFloatField
      FieldName = 'T081_ID'
      Required = True
    end
    object odsListT082_ID: TFloatField
      FieldName = 'T082_ID'
    end
  end
end

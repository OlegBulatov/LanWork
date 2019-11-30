inherited frm74_MMVBDoubleBottom: Tfrm74_MMVBDoubleBottom
  Left = 264
  Top = 259
  Caption = 'Ёмиссии ћћ¬Ѕ, не прив€занные к коду ц.б.'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      Top = 73
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 117
      Height = 168
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
      Columns = <
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = '–ег. номер ц.б.'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = '“ип ц.б.'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Ёмитент'
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = ' од эмитента'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = '“ип эмитента'
          Width = 110
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 96
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 52
      TabOrder = 4
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 822
      Height = 52
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object lcSecType: TDBLookupComboBox
        Left = 97
        Top = 28
        Width = 387
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DropDownRows = 10
        KeyField = 'T027_ID'
        ListField = 'T027_SEC_TYPE'
        ListSource = dsSecType
        TabOrder = 0
      end
      object lcIssuers: TDBLookupComboBox
        Left = 97
        Top = 4
        Width = 387
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DropDownRows = 10
        KeyField = 'T028_ID'
        ListField = 'T028_SHOT_NAME'
        ListSource = dsIssuers
        TabOrder = 1
        OnCloseUp = lcIssuersCloseUp
      end
      object chbIssuer: TCheckBox
        Left = 5
        Top = 6
        Width = 77
        Height = 17
        Caption = 'Ёмитент'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object chbSecType: TCheckBox
        Left = 5
        Top = 29
        Width = 75
        Height = 17
        Caption = '“ип ц.б.'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object Button1: TButton
        Left = 489
        Top = 2
        Width = 75
        Height = 25
        Action = actApplayFilter
        Anchors = [akTop, akRight]
        TabOrder = 4
      end
    end
  end
  inherited ActionList: TActionList
    object actApplayFilter: TAction
      Caption = 'ќбновить'
      Hint = 'ќбновить'
      OnExecute = actApplayFilterExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT V1.T030_ID, '
      #9'   V1.T026_ID, '
      #9'   V1.T026_SEC_REGN, '
      '     V1.T027_ID,'
      #9'   V1.T027_SEC_TYPE,'
      #9'   V1.T028_ID,'
      #9'   V1.T028_SHOT_NAME,'
      '     V1.T025_CODE,'
      #9'   V1.T025_SHOT_NAME,'
      #9'   V1.T028_CODE'
      'FROM   V_405_MMVB_NOT_EMISSIONS V1'
      'WHERE ((:FLAG_01 = 0) or (T028_ID = :T028_ID))'
      'AND ((:FLAG_02 = 0) or (T027_ID = :T027_ID))'
      ' ')
    Variables.Data = {
      0300000004000000080000003A464C41475F3031040000000000000000000000
      080000003A543032385F4944040000000000000000000000080000003A464C41
      475F3032040000000000000000000000080000003A543032375F494404000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000A00000007000000543033305F494401000000000007000000543032
      365F49440100000000000D000000543032365F5345435F5245474E0100000000
      0007000000543032375F49440100000000000D000000543032375F5345435F54
      59504501000000000007000000543032385F49440100000000000E0000005430
      32385F53484F545F4E414D4501000000000009000000543032355F434F444501
      00000000000E000000543032355F53484F545F4E414D45010000000000090000
      00543032385F434F4445010000000000}
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
  end
  object odsIssuers: TOracleDataSet
    SQL.Strings = (
      
        'SELECT    T028_ID, T028_SHOT_NAME || '#39' ('#39' || T028_CODE || '#39' )'#39' T' +
        '028_SHOT_NAME'
      'FROM      V_405_ISSUER_MAIN'
      'ORDER BY  UPPER(T028_SHOT_NAME)')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D45010000000000}
    Session = dmMain.OracleSession
    Left = 216
    Top = 8
    object odsIssuersT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsIssuersT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 514
    end
  end
  object dsIssuers: TDataSource
    DataSet = odsIssuers
    Left = 248
    Top = 8
  end
  object odsSecType: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID,'#9'T028_PARENT_ID T028_ID, T027_SEC_TYPE'
      'FROM   V_405_SEC_TYPE_MAIN'
      'where T028_PARENT_ID = :T028_ID'
      'ORDER BY  T027_SEC_TYPE')
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543032375F49440100000000000D000000543032
      375F5345435F5459504501000000000007000000543032385F49440100000000
      00}
    Session = dmMain.OracleSession
    Left = 312
    Top = 16
    object odsSecTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsSecTypeT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsSecTypeT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
  end
  object dsSecType: TDataSource
    DataSet = odsSecType
    Left = 344
    Top = 16
  end
end

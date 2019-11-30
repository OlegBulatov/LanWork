inherited frm95_EmissionLinkList: Tfrm95_EmissionLinkList
  Left = 161
  Top = 337
  Caption = 'Эмиссии'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      inherited ToolButton4: TToolButton
        Visible = False
      end
      object ToolButton5: TToolButton
        Left = 589
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 597
        Top = 0
        AutoSize = True
        Caption = 'Поиск по...'
        DropdownMenu = pmSelect
        ImageIndex = 11
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T027_SEC_TYPE'
          SortType = stAsc
        end
        item
          FieldName = 'T026_SEC_REGN'
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
          Title.Caption = 'Рег. номер '
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T010_ISIN_TRANSL'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер ISIN'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код эмит.'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип эмит.'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_ID'
          PickList.Strings = ()
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T023_NAME'
          PickList.Strings = ()
          Title.Caption = 'Состояние выплат'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T031_DATE_ANNUL'
          PickList.Strings = ()
          Title.Caption = 'Дата аннулирования'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_ID'
          PickList.Strings = ()
          Visible = False
        end>
    end
  end
  inherited pnlButtons: TPanel
    Visible = True
  end
  inherited ActionList: TActionList
    inherited actSelectItem: TAction
      Enabled = True
      Visible = True
    end
    inherited actAddAttributes: TAction
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Visible = False
    end
    inherited actEditAttributes: TAction
      Visible = False
    end
    object actFilterByIsin: TAction
      Caption = 'ISIN'
      OnExecute = actFilterByIsinExecute
      OnUpdate = actFilterByIsinUpdate
    end
    object actFilterByIssuer: TAction
      Caption = 'Эмитенту'
      OnExecute = actFilterByIssuerExecute
      OnUpdate = actFilterByIssuerUpdate
    end
    object actFilterByRegn: TAction
      Caption = 'Рег.номеру'
      OnExecute = actFilterByRegnExecute
      OnUpdate = actFilterByRegnUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T030_ID,'
      '       T026_ID,'
      '       T026_SEC_REGN,'
      '       T027_ID,'
      '       T027_SEC_TYPE,'
      '       T028_ID,'
      '       T028_SHOT_NAME,'
      '       T025_CODE,'
      '       T025_SHOT_NAME,'
      '       T028_CODE, '
      '       T010_ISIN_TRANSL,'
      '       T023_NAME,'
      '       T031_DATE_ANNUL'
      'FROM   V_405_EMISSION_INF'
      '--WHERE  T028_ID =  :T028_ID')
    QBEDefinition.QBEFieldDefs = {
      040000000D00000007000000543033305F494401000000000007000000543032
      365F49440100000000000D000000543032365F5345435F5245474E0100000000
      0007000000543032375F49440100000000000D000000543032375F5345435F54
      59504501000000000007000000543032385F49440100000000000E0000005430
      32385F53484F545F4E414D4501000000000009000000543032355F434F444501
      00000000000E000000543032355F53484F545F4E414D45010000000000090000
      00543032385F434F444501000000000009000000543032335F4E414D45010000
      0000000F000000543033315F444154455F414E4E554C01000000000010000000
      543031305F4953494E5F5452414E534C010000000000}
    MasterFields = 'itFrams'
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
    object odsListT023_NAME: TStringField
      FieldName = 'T023_NAME'
      Size = 255
    end
    object odsListT031_DATE_ANNUL: TDateTimeField
      FieldName = 'T031_DATE_ANNUL'
    end
    object odsListT010_ISIN_TRANSL: TStringField
      FieldName = 'T010_ISIN_TRANSL'
      Required = True
      Size = 255
    end
  end
  object pmSelect: TPopupMenu
    Left = 632
    Top = 32
    object N16: TMenuItem
      Action = actFilterByIssuer
    end
    object N17: TMenuItem
      Action = actFilterByRegn
    end
    object ISIN1: TMenuItem
      Action = actFilterByIsin
    end
  end
end

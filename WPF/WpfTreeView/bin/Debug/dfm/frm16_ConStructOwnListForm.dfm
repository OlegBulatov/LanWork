inherited frm16_ConStructOwnList: Tfrm16_ConStructOwnList
  Left = 56
  Top = 192
  Width = 853
  Caption = 'Справочники: структура собственности'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 834
  end
  inherited Panel2: TPanel
    Width = 837
    inherited Panel3: TPanel
      Left = 672
    end
  end
  inherited paRight: TPanel
    Left = 837
  end
  inherited paMain: TPanel
    Width = 834
    inherited paToolBars: TPanel
      Width = 834
      inherited ToolBar2: TToolBar
        Top = 23
        Width = 842
        inherited ToolButton17: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton18: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton19: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
        object ToolButton6: TToolButton
          Left = 676
          Top = 0
          Action = actDBF
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 88
      Width = 834
      Height = 175
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T027_SEC_TYPE'
          SortType = stAsc
        end
        item
          FieldName = 'M010_INT_DATE'
          SortType = stDesc
        end
        item
          FieldName = 'M011_NUMBER_DESC'
          SortType = stAsc
        end
        item
          FieldName = 'M050_TYPE_DESC'
          SortType = stAsc
        end
        item
          FieldName = 'M030_PRC'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M010_INT_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата с'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M010_INT_END_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата по'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M011_NUMBER_DESC'
          PickList.Strings = ()
          Title.Caption = 'Версия'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M011_CALC_INCL_DESC'
          PickList.Strings = ()
          Title.Caption = 'Активна'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME_OWN'
          PickList.Strings = ()
          Title.Caption = 'Собственник'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип соб.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M030_PRC'
          PickList.Strings = ()
          Title.Caption = 'Процент'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_TYPE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Тип инв.'
          Width = 45
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 46
      Width = 834
      inherited Panel1: TPanel
        Left = 807
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 67
      Width = 834
      inherited Panel1: TPanel
        Left = 807
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 23
      Width = 834
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
    end
  end
  inherited StatusBar: TStatusBar
    Width = 837
  end
  inherited ActionList: TActionList
    object actCreateVer: TAction
      Caption = 'Создать'
      ImageIndex = 0
    end
    object actDBF: TAction
      Caption = 'Экспорт в DBF'
      ImageIndex = 40
      OnExecute = actDBFExecute
      OnUpdate = actDBFUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '       M014_ID,'
      '       T028_SHOT_NAME,'
      '       T028_CODE,'
      '       T027_SEC_TYPE,'
      '       M010_INT_DATE,'
      '       M010_INT_END_DATE,'
      '       M011_NUMBER_DESC,'
      '       M011_CALC_INCL_DESC,'
      '       T028_SHOT_NAME_OWN,'
      '       T025_SHOT_NAME,'
      '       M030_PRC,'
      '       M050_TYPE_DESC'
      'FROM V_NR_STR_OWNERSHIP'
      'WHERE M014_ID = :M014_ID')
    Variables.Data = {
      0300000001000000080000003A4D3031345F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000C0000000E000000543032385F53484F545F4E414D45010000000000
      09000000543032385F434F44450100000000000D000000543032375F5345435F
      545950450100000000000D0000004D3031305F494E545F444154450100000000
      00110000004D3031305F494E545F454E445F4441544501000000000010000000
      4D3031315F4E554D4245525F44455343010000000000130000004D3031315F43
      414C435F494E434C5F4445534301000000000012000000543032385F53484F54
      5F4E414D455F4F574E0100000000000E000000543032355F53484F545F4E414D
      45010000000000080000004D3033305F5052430100000000000E0000004D3035
      305F545950455F44455343010000000000070000004D3031345F494401000000
      0000}
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListM010_INT_DATE: TDateTimeField
      FieldName = 'M010_INT_DATE'
      Required = True
    end
    object odsListM010_INT_END_DATE: TDateTimeField
      FieldName = 'M010_INT_END_DATE'
    end
    object odsListM011_NUMBER_DESC: TStringField
      FieldName = 'M011_NUMBER_DESC'
      Size = 57
    end
    object odsListM011_CALC_INCL_DESC: TStringField
      FieldName = 'M011_CALC_INCL_DESC'
      Size = 9
    end
    object odsListT028_SHOT_NAME_OWN: TStringField
      FieldName = 'T028_SHOT_NAME_OWN'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListM030_PRC: TFloatField
      FieldName = 'M030_PRC'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TYPE_DESC: TStringField
      FieldName = 'M050_TYPE_DESC'
      Size = 11
    end
    object odsListM014_ID: TFloatField
      FieldName = 'M014_ID'
      Required = True
    end
  end
end

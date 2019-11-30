inherited frm94_EmitentLinkList: Tfrm94_EmitentLinkList
  Left = 242
  Top = 142
  Width = 808
  Height = 386
  Caption = 'Эмитенты'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 797
    Height = 300
  end
  inherited paRight: TPanel
    Left = 800
    Height = 300
  end
  inherited paMain: TPanel
    Width = 797
    Height = 300
    inherited ToolBar2: TToolBar
      Width = 797
      inherited ToolButton4: TToolButton
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 797
      Height = 235
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 184
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T036_FULL_NAME'
          PickList.Strings = ()
          Title.Caption = 'Полное наименование'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 136
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип эмит.'
          Width = 90
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 797
      inherited Panel1: TPanel
        Left = 770
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 797
      inherited Panel1: TPanel
        Left = 770
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 333
    Width = 800
  end
  inherited pnlButtons: TPanel
    Top = 300
    Width = 800
    Visible = True
    inherited OKBtn: TButton
      Left = 642
      Hint = 'Выбрать текущую запись'
    end
    inherited CancelBtn: TButton
      Left = 722
    end
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
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T028_ID,'
      '       T028_SHOT_NAME,'
      '       T028_CODE,'
      '       T025_SHOT_NAME,'
      '       T036_FULL_NAME'
      'FROM   V_405_ISSUER_MAIN')
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D4501000000000009000000543032385F434F44450100
      000000000E000000543032355F53484F545F4E414D450100000000000E000000
      543033365F46554C4C5F4E414D45010000000000}
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT036_FULL_NAME: TStringField
      FieldName = 'T036_FULL_NAME'
      Size = 255
    end
  end
end

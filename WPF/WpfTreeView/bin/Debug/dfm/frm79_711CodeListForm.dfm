inherited frm79_711CodeList: Tfrm79_711CodeList
  Left = 112
  Top = 120
  Width = 854
  Height = 543
  Caption = 'Справочник кодов формы 711'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 843
    Height = 457
  end
  inherited paRight: TPanel
    Left = 846
    Height = 457
  end
  inherited paMain: TPanel
    Width = 843
    Height = 457
    inherited ToolBar2: TToolBar
      Width = 843
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 843
      Height = 392
      Columns = <
        item
          Expanded = False
          FieldName = 'T054_NAME'
          PickList.Strings = ()
          Title.Caption = 'Раздел'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TYPE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T053_NAME'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T053_DESCR'
          PickList.Strings = ()
          Title.Caption = 'Описание'
          Width = 517
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 843
      inherited Panel1: TPanel
        Left = 816
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 843
      inherited Panel1: TPanel
        Left = 816
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 490
    Width = 846
  end
  inherited pnlButtons: TPanel
    Top = 457
    Width = 846
    inherited OKBtn: TButton
      Left = 688
    end
    inherited CancelBtn: TButton
      Left = 768
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
      'SELECT   T053_ID,'
      '         T053_NAME,'
      '         T053_TYPE,'
      '         TYPE_DESC,'
      '         T054_ID,'
      '         T054_NAME,'
      '         T053_DESCR'
      'FROM     V_405_711_CODE')
    QBEDefinition.QBEFieldDefs = {
      040000000700000007000000543035335F494401000000000009000000543035
      335F4E414D4501000000000009000000543035335F5459504501000000000009
      000000545950455F4445534301000000000007000000543035345F4944010000
      00000009000000543035345F4E414D450100000000000A000000543035335F44
      45534352010000000000}
    object odsListT053_ID: TFloatField
      FieldName = 'T053_ID'
      Required = True
    end
    object odsListT053_NAME: TStringField
      FieldName = 'T053_NAME'
      Required = True
      Size = 255
    end
    object odsListT053_TYPE: TFloatField
      FieldName = 'T053_TYPE'
    end
    object odsListTYPE_DESC: TStringField
      FieldName = 'TYPE_DESC'
      Size = 22
    end
    object odsListT054_ID: TFloatField
      FieldName = 'T054_ID'
      Required = True
    end
    object odsListT054_NAME: TStringField
      FieldName = 'T054_NAME'
      Required = True
      Size = 255
    end
    object odsListT053_DESCR: TStringField
      FieldName = 'T053_DESCR'
      Size = 500
    end
  end
end

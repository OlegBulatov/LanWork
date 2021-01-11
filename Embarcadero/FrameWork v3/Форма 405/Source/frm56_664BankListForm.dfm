inherited frm56_664BankList: Tfrm56_664BankList
  Left = 329
  Top = 341
  Caption = 'Счета формы 664'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'T088_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T088_DESCR'
          PickList.Strings = ()
          Title.Caption = 'Описание'
          Width = 400
          Visible = True
        end>
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
      'select * from T088_664_ACCOUNTS')
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543038385F494401000000000009000000543038
      385F4E414D450100000000000A000000543038385F4445534352010000000000
      09000000543038385F54595045010000000000}
    object odsListT088_ID: TFloatField
      FieldName = 'T088_ID'
      Required = True
    end
    object odsListT088_NAME: TStringField
      FieldName = 'T088_NAME'
      Required = True
      Size = 255
    end
    object odsListT088_DESCR: TStringField
      FieldName = 'T088_DESCR'
      Size = 500
    end
    object odsListT088_TYPE: TStringField
      FieldName = 'T088_TYPE'
      Size = 255
    end
  end
end

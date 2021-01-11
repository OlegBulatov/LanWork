inherited frm22_CBList: Tfrm22_CBList
  Left = 383
  Top = 231
  Caption = 'Реестр ценных бумаг'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      inherited ToolButton17: TToolButton
        Visible = False
      end
      inherited ToolButton18: TToolButton
        Visible = False
      end
      inherited ToolButton19: TToolButton
        Visible = False
      end
      inherited ToolButton4: TToolButton
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'SECREGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SECTYPE_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CURRENCY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Валюта'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ISSUER'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REGDATE'
          PickList.Strings = ()
          Title.Caption = 'Дата регистрации'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MATURITY'
          PickList.Strings = ()
          Title.Caption = 'Дата погашения'
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      
        'SELECT SECREGN, REGDATE, ISSUER, MATURITY, SECTYPE_NAME, CCURREN' +
        'CY, CURRENCY_NAME'
      'FROM   V_SECTYPE_LIST'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      0400000006000000070000005345435245474E01000000000007000000524547
      4441544501000000000006000000495353554552010000000000080000004D41
      5455524954590100000000000C000000534543545950455F4E414D4501000000
      0000090000004343555252454E4359010000000000}
    object odsListSECREGN: TStringField
      FieldName = 'SECREGN'
      Size = 25
    end
    object odsListREGDATE: TDateTimeField
      FieldName = 'REGDATE'
    end
    object odsListISSUER: TStringField
      FieldName = 'ISSUER'
      Size = 250
    end
    object odsListMATURITY: TDateTimeField
      FieldName = 'MATURITY'
    end
    object odsListSECTYPE_NAME: TStringField
      FieldName = 'SECTYPE_NAME'
      Size = 250
    end
    object odsListCCURRENCY: TFloatField
      FieldName = 'CCURRENCY'
    end
    object odsListCURRENCY_NAME: TStringField
      FieldName = 'CURRENCY_NAME'
    end
  end
end

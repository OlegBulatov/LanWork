inherited frm20_EmitList: Tfrm20_EmitList
  Left = 383
  Top = 231
  Caption = 'Реестр эмитентов'
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
          FieldName = 'NAMESH'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COUNTRY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAMEL'
          PickList.Strings = ()
          Title.Caption = 'Полное наименование'
          Width = 1000
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
      
        'SELECT NAMEL, NAMESH, INN, ISSUER_CO_ID, ISSUER_TYPE_NAME, COUNT' +
        'RY_NAME'
      'FROM   V_ISSUER_LIST')
    QBEDefinition.QBEFieldDefs = {
      0400000005000000050000004E414D454C010000000000060000004E414D4553
      4801000000000003000000494E4E0100000000000C0000004953535545525F43
      4F5F4944010000000000100000004953535545525F545950455F4E414D450100
      00000000}
    object odsListNAMEL: TStringField
      FieldName = 'NAMEL'
      Size = 250
    end
    object odsListNAMESH: TStringField
      FieldName = 'NAMESH'
      Size = 250
    end
    object odsListINN: TStringField
      FieldName = 'INN'
      Size = 10
    end
    object odsListISSUER_CO_ID: TFloatField
      FieldName = 'ISSUER_CO_ID'
    end
    object odsListISSUER_TYPE_NAME: TStringField
      FieldName = 'ISSUER_TYPE_NAME'
      Size = 250
    end
    object odsListCOUNTRY_NAME: TStringField
      FieldName = 'COUNTRY_NAME'
    end
  end
end

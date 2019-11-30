inherited frm200_GKORatesItemList: Tfrm200_GKORatesItemList
  Caption = 'frm200_GKORatesItemList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T080_TRADEDATE'
          SortType = stDesc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T080_TRADEDATE'
          PickList.Strings = ()
          Title.Caption = 'Дата котировки'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_CLOSE'
          PickList.Strings = ()
          Title.Caption = 'CLOSE'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T080_LOAD_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата загрузки'
          Width = 120
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
      'SELECT'
      ' T080_TRADEDATE,'
      ' T080_LOAD_DATE,'
      ' T080_CLOSE'
      'FROM V_405_GKO_RATES'
      'WHERE T081_ID = :T081_ID'
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A543038315F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000030000000E000000543038305F545241444544415445010000000000
      0E000000543038305F4C4F41445F444154450100000000000A00000054303830
      5F434C4F5345010000000000}
    MasterFields = 'T081_ID'
    object odsListT080_TRADEDATE: TDateTimeField
      FieldName = 'T080_TRADEDATE'
      Required = True
    end
    object odsListT080_LOAD_DATE: TDateTimeField
      FieldName = 'T080_LOAD_DATE'
    end
    object odsListT080_CLOSE: TFloatField
      FieldName = 'T080_CLOSE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
  end
end

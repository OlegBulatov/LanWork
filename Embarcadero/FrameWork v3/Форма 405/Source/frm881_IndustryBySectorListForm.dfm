inherited frm881_IndustryBySectorList: Tfrm881_IndustryBySectorList
  Caption = 'frm881_IndustryBySectorList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'CODE'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'CODE'
          PickList.Strings = ()
          Title.Caption = 'ОКВЭД'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INDUSTRY'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
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
      'SELECT   T140_ID,'
      '         CODE,'
      '         INDUSTRY'
      'FROM     V_405_INDUSTRY_BY_SECTOR'
      'WHERE T140_ID = :T140_ID       ')
    Variables.Data = {
      0300000001000000080000003A543134305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543134305F494401000000000004000000434F44
      4501000000000008000000494E445553545259010000000000}
    MasterFields = 'T140_ID'
    object odsListCODE: TStringField
      FieldName = 'CODE'
      Required = True
      Size = 255
    end
    object odsListINDUSTRY: TStringField
      FieldName = 'INDUSTRY'
      Required = True
      Size = 255
    end
  end
end

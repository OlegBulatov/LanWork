inherited frm88_IndustryList: Tfrm88_IndustryList
  Caption = 'Справочник отраслей'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
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
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'INDUSTRY'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'INDUSTRY'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T112_GROUP_NAME'
          PickList.Strings = ()
          Title.Caption = 'Межд. отрасль'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T112_GROUP_LETTER'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 40
          Visible = True
        end>
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '  CODE,'
      '  INDUSTRY,'
      '  T112_GROUP_LETTER,'
      '  T112_GROUP_NAME'
      'FROM V_405_INDUSTRY_ADV')
    QBEDefinition.QBEFieldDefs = {
      040000000400000004000000434F444501000000000008000000494E44555354
      52590100000000000F000000543131325F47524F55505F4E414D450100000000
      0011000000543131325F47524F55505F4C4554544552010000000000}
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
    object odsListT112_GROUP_LETTER: TStringField
      FieldName = 'T112_GROUP_LETTER'
      Required = True
      Size = 3
    end
    object odsListT112_GROUP_NAME: TStringField
      FieldName = 'T112_GROUP_NAME'
      Size = 255
    end
  end
end

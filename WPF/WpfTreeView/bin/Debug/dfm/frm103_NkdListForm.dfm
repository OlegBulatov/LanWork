inherited frm103_NkdList: Tfrm103_NkdList
  Caption = 'frm103_NkdList'
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
        Caption = 'Пересчитать'
        ImageIndex = 28
        OnClick = ToolButton6Click
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T121_DATE'
          SortType = stDesc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T121_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T121_NKD'
          PickList.Strings = ()
          Title.Caption = 'НКД'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T121_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Примечание'
          Width = 260
          Visible = True
        end>
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select T030_ID, T121_DATE, T121_NKD, T121_COMMENT'
      'FROM V_405_NKD'
      'WHERE T030_ID = :T030_ID')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000007000000543033305F494401000000000009000000543132
      315F4441544501000000000008000000543132315F4E4B440100000000000C00
      0000543132315F434F4D4D454E54010000000000}
    MasterFields = 'T030_ID'
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsListT121_DATE: TDateTimeField
      FieldName = 'T121_DATE'
      Required = True
    end
    object odsListT121_NKD: TFloatField
      FieldName = 'T121_NKD'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object odsListT121_COMMENT: TStringField
      FieldName = 'T121_COMMENT'
      Size = 255
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Coupons.p_calc_nkd(:T030_ID);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
  end
  object oqUpdateAll: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Coupons.p_calc_nkd_all(:TYPE);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {0300000001000000050000003A54595045040000000000000000000000}
    Left = 176
    Top = 224
  end
end

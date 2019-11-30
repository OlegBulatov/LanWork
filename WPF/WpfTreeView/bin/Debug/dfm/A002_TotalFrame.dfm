inherited A002_Total: TA002_Total
  Width = 443
  Height = 15
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Align = alBottom
  inherited xxxDBGrid: TxxxDBGrid
    Top = 0
    Width = 443
    Height = 15
    Hint = 'Суммы в $'
    BorderStyle = bsNone
    Color = clBtnFace
    Options = [dgEditing, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
    AdvSettings.Enabled = False
    Columns = <
      item
        Expanded = False
        FieldName = 'STR_COUNT'
        PickList.Strings = ()
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SALDO'
        PickList.Strings = ()
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SUM_IN'
        PickList.Strings = ()
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T200_SUM_OUT'
        PickList.Strings = ()
        Width = 100
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Top = 15
    Width = 443
    Height = 0
    Align = alBottom
    Enabled = False
    Visible = False
    inherited tlbNav: TToolBar
      Height = 0
    end
    inherited tlbList: TToolBar
      Height = 0
    end
    inherited tlbExcel: TToolBar
      Height = 0
    end
    inherited tlbSeach: TToolBar
      Height = 0
    end
    inherited tlbFilter: TToolBar
      Height = 0
    end
    inherited tlbSelect: TToolBar
      Height = 0
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      ' SELECT'
      '  '#39'Всего строк: '#39' || Count(*)  AS STR_COUNT,'
      '  SUM(T200_SALDO/ 1000000) AS T200_SALDO,'
      '  SUM(T200_SUM_IN/ 1000000) AS T200_SUM_IN,'
      '  SUM(T200_SUM_OUT/ 1000000) AS T200_SUM_OUT'
      'FROM DS_BOP_BOSS.VS_BOP_SUM_'
      'WHERE T055_ID = :T055_ID'
      'AND T100_ID = :T100_ID')
    Variables.Data = {
      0300000002000000080000003A543035355F4944040000000000000000000000
      080000003A543130305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000004000000090000005354525F434F554E540100000000000A00000054
      3230305F53414C444F0100000000000B000000543230305F53554D5F494E0100
      000000000C000000543230305F53554D5F4F5554010000000000}
    Left = 385
    Top = 65533
    object odsListSTR_COUNT: TStringField
      FieldName = 'STR_COUNT'
      Size = 53
    end
    object odsListT200_SALDO: TFloatField
      FieldName = 'T200_SALDO'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT200_SUM_IN: TFloatField
      FieldName = 'T200_SUM_IN'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT200_SUM_OUT: TFloatField
      FieldName = 'T200_SUM_OUT'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
  end
end

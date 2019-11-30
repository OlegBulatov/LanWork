inherited frm19_EmissSizeMoveList: Tfrm19_EmissSizeMoveList
  Caption = 'Динамика общего объема эмиссии'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited paToolBars: TPanel
      inherited ToolBar2: TToolBar
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      AdvSettings.Indexes = <
        item
          FieldName = 'T098_START_DATE'
          SortType = stDesc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T098_START_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата с'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T098_END_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата по'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMISS_SIZE_SUM'
          PickList.Strings = ()
          Title.Caption = 'Общий размер эмиссий'
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
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
      'SELECT '
      ' T027_ID,'
      ' T028_ID,'
      ' T098_START_DATE,'
      ' T098_END_DATE,'
      ' EMISS_SIZE_SUM'
      'FROM V_NR_EMISS_SIZE_MOVE'
      'WHERE T028_ID = :T028_ID'
      'AND T027_ID = :T027_ID'
      
        '-- один из концов интревала размера эмиссий попадает в интервал ' +
        'структуры'
      'AND  ('
      
        '          T098_START_DATE BETWEEN :M010_INT_DATE + 1 AND NVL(:M0' +
        '10_INT_END_DATE, TRUNC(SYSDATE)) - 1'
      '          OR'
      
        '          NVL(T098_END_DATE, SYSDATE) BETWEEN :M010_INT_DATE + 1' +
        ' AND NVL(:M010_INT_END_DATE, TRUNC(SYSDATE)) - 1'
      '          )'
      '')
    Variables.Data = {
      0300000004000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F49440400000000000000000000000E0000003A4D3031
      305F494E545F444154450C0000000000000000000000120000003A4D3031305F
      494E545F454E445F444154450C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543032375F494401000000000007000000543032
      385F49440100000000000F000000543039385F53544152545F44415445010000
      0000000D000000543039385F454E445F444154450100000000000E000000454D
      4953535F53495A455F53554D010000000000}
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT098_START_DATE: TDateTimeField
      FieldName = 'T098_START_DATE'
      Required = True
    end
    object odsListT098_END_DATE: TDateTimeField
      FieldName = 'T098_END_DATE'
    end
    object odsListEMISS_SIZE_SUM: TFloatField
      FieldName = 'EMISS_SIZE_SUM'
      DisplayFormat = '### ### ### ##0'
    end
  end
end

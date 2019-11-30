inherited frm98_StrOwnTabList: Tfrm98_StrOwnTabList
  Left = 153
  Top = 115
  Caption = 'Версии структуры владения'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Left = 181
    Top = 0
    Width = 3
    Height = 330
    Cursor = crHSplit
    Align = alLeft
  end
  inherited spRight: TSplitter
    Height = 330
  end
  object Splitter2: TSplitter [2]
    Left = 0
    Top = 330
    Width = 776
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  inherited Panel2: TPanel
    Top = 526
  end
  inherited paRight: TPanel
    Height = 330
  end
  inherited Panel1: TPanel
    Left = 184
    Top = 0
    Width = 589
    Align = alClient
    inherited pc01: TPageControl
      Width = 587
      inherited ts01: TTabSheet
        Caption = 'Структура владения'
      end
    end
  end
  inherited paMain: TPanel
    Width = 181
    Height = 330
    Align = alLeft
    inherited ToolBar2: TToolBar
      Width = 181
      ShowCaptions = False
      inherited ToolButton18: TToolButton
        Left = 27
      end
      inherited ToolButton19: TToolButton
        Left = 54
      end
      inherited ToolButton5: TToolButton
        Left = 81
        Enabled = False
        Visible = False
      end
      inherited ToolButton4: TToolButton
        Left = 108
      end
      inherited ToolBar1: TToolBar
        Left = 116
      end
      inherited sp02: TToolButton
        Left = 185
      end
      inherited tbSimFilter: TToolButton
        Left = 193
      end
      inherited tbSep01: TToolButton
        Left = 233
      end
      inherited tlbSearch: TToolBar
        Left = 241
        Width = 32
        ShowCaptions = False
        inherited tbSearch: TToolButton
          ImageIndex = 3
        end
      end
      inherited ToolButton13: TToolButton
        Left = 273
      end
      inherited tbExcel: TToolButton
        Left = 281
      end
      inherited ToolButton7: TToolButton
        Left = 388
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 181
      Height = 265
      AdvSettings.Indexes = <
        item
          FieldName = 'M010_INT_DATE'
          SortType = stDesc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'M010_INT_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата с'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M010_INT_END_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата по'
          Width = 80
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 181
      inherited Panel1: TPanel
        Left = 365
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 181
      inherited Panel1: TPanel
        Left = 477
      end
    end
  end
  object pc02: TPageControl [8]
    Left = 0
    Top = 333
    Width = 776
    Height = 193
    ActivePage = pc02ts01
    Align = alBottom
    TabOrder = 5
    object pc02ts01: TTabSheet
      Caption = 'Динамика размера эмиссий'
    end
  end
  inherited ActionList: TActionList
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT M010_ID,'
      ' M010_INT_DATE,'
      ' M010_INT_END_DATE,'
      ' T027_ID,'
      ' T028_ID,'
      ' NEED_REMAKE'
      'FROM V_NR_INTERVALS_WITH_CHANGE'
      'WHERE T028_ID = :T028_ID'
      'AND T027_ID = :T027_ID')
    Variables.Data = {
      0300000002000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000006000000070000004D3031305F49440100000000000D0000004D3031
      305F494E545F44415445010000000000110000004D3031305F494E545F454E44
      5F4441544501000000000007000000543032375F494401000000000007000000
      543032385F49440100000000000B0000004E4545445F52454D414B4501000000
      0000}
    AfterScroll = odsListAfterScroll
    object odsListM010_ID: TFloatField
      FieldName = 'M010_ID'
      Required = True
    end
    object odsListM010_INT_DATE: TDateTimeField
      FieldName = 'M010_INT_DATE'
      Required = True
    end
    object odsListM010_INT_END_DATE: TDateTimeField
      FieldName = 'M010_INT_END_DATE'
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListNEED_REMAKE: TStringField
      FieldName = 'NEED_REMAKE'
      Size = 1
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M010_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M010_INT_DATE := :M010_INT_DATE;'
      '  v_rec.M010_ID := :M010_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  Pk_NResident.p_intervals_add(v_rec);'
      '  :M010_ID := v_rec.M010_ID;'
      'END;'
      '')
    Variables.Data = {
      03000000040000000E0000003A4D3031305F494E545F444154450C0000000000
      000000000000080000003A4D3031305F49440400000000000000000000000800
      00003A543032385F4944040000000000000000000000080000003A543032375F
      4944040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M010_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M010_INT_DATE := :M010_INT_DATE;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.M010_ID := :M010_ID;'
      '  Pk_NResident.p_intervals_update(v_rec);'
      'END;')
    Variables.Data = {
      0300000004000000080000003A4D3031305F4944040000000000000000000000
      0E0000003A4D3031305F494E545F444154450C00000000000000000000000800
      00003A543032385F4944040000000000000000000000080000003A543032375F
      4944040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M010_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M010_ID := :M010_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  v_rec.M010_INT_DATE := :M010_INT_DATE;'
      '  Pk_NResident.p_intervals_delete(v_rec);'
      'END;'
      '')
    Variables.Data = {
      0300000004000000080000003A4D3031305F4944040000000000000000000000
      0E0000003A4D3031305F494E545F444154450C00000000000000000000000800
      00003A543032385F4944040000000000000000000000080000003A543032375F
      4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M010_rec;'
      '    v_result NUMBER;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M010_INT_DATE := :M010_INT_DATE;'
      '  v_rec.M010_ID := :M010_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.T027_ID := :T027_ID;'
      '  :O_RESULT := Pk_NResident.f_intervals_check(v_rec);'
      'END;')
    Variables.Data = {
      03000000050000000E0000003A4D3031305F494E545F444154450C0000000000
      000000000000080000003A4D3031305F49440400000000000000000000000900
      00003A4F5F524553554C54040000000800000000000000000000000000000008
      0000003A543032385F4944040000000000000000000000080000003A54303237
      5F4944040000000000000000000000}
  end
end

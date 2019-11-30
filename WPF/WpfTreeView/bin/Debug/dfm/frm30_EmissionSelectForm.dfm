inherited frm30_EmissionSelect: Tfrm30_EmissionSelect
  Left = 130
  Top = 262
  Width = 920
  Height = 673
  Caption = 'Список эмиссий'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 373
    Width = 912
  end
  inherited spRight: TSplitter
    Left = 909
    Height = 373
  end
  inherited paRight: TPanel
    Left = 912
    Height = 373
  end
  inherited paMain: TPanel
    Width = 909
    Height = 373
    inherited ToolBar2: TToolBar
      Top = 29
      Width = 909
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 94
      Width = 909
      Height = 279
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T027_SEC_TYPE'
          SortType = stAsc
        end
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер ц.б.'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T027_SEC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип ц.б.'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T010_ISIN_TRANSL'
          PickList.Strings = ()
          Title.Caption = 'Код ц.б. (ISIN)'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 251
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код эмитента'
          Width = 201
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип эмитента'
          Width = 90
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 52
      Width = 909
      inherited Panel1: TPanel
        Left = 882
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 73
      Width = 909
      inherited Panel1: TPanel
        Left = 882
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 909
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 66
        Height = 13
        Caption = 'Тип эмиссии'
      end
      object cbEmissType: TComboBox
        Left = 81
        Top = 4
        Width = 157
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Text = 'cbEmissType'
        OnChange = cbEmissTypeChange
        Items.Strings = (
          'Главные'
          'Все')
      end
    end
  end
  inherited Panel1: TPanel
    Top = 376
    Width = 912
    inherited pc01: TPageControl
      Width = 910
    end
  end
  inherited StatusBar: TStatusBar
    Top = 623
    Width = 912
  end
  inherited pnlButtons: TPanel
    Top = 590
    Width = 912
    inherited OKBtn: TButton
      Left = 754
    end
    inherited CancelBtn: TButton
      Left = 834
    end
  end
  inherited ActionList: TActionList
    inherited actShowDetail: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT  /*+ FIRST_ROWS */ '
      '        IS_MAIN, '
      '        T030_ID,'
      '        T026_ID,'
      '        T026_SEC_REGN,'
      '        T027_ID,'
      '        T027_SEC_TYPE,'
      '        T028_ID,'
      '        T028_SHOT_NAME,'
      '        T028_CODE,'
      '        T025_SHOT_NAME,'
      '        T010_ISIN_TRANSL'
      'FROM    V_405_EMISSION'
      'WHERE   ((:IS_MAIN = '#39'Все'#39') OR (IS_MAIN = :IS_MAIN))'
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A49535F4D41494E050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000B00000007000000543033305F494401000000000007000000543032
      365F494401000000000007000000543032375F49440100000000000D00000054
      3032365F5345435F5245474E0100000000000D000000543032375F5345435F54
      5950450100000000000E000000543032385F53484F545F4E414D450100000000
      0007000000543032385F494401000000000009000000543032385F434F444501
      00000000000E000000543032355F53484F545F4E414D45010000000000070000
      0049535F4D41494E01000000000010000000543031305F4953494E5F5452414E
      534C010000000000}
    object odsListIS_MAIN: TStringField
      FieldName = 'IS_MAIN'
      Size = 3
    end
    object odsListT010_ISIN_TRANSL: TStringField
      FieldName = 'T010_ISIN_TRANSL'
      Required = True
      Size = 255
    end
  end
end

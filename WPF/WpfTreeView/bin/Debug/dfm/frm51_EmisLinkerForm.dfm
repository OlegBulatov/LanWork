inherited frm51_EmisLinker: Tfrm51_EmisLinker
  Left = 57
  Top = 373
  Caption = 'frm51_EmisLinker'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Left = 532
  end
  inherited Panel2: TPanel
    Width = 532
    object Bevel1: TBevel [0]
      Left = 0
      Top = 0
      Width = 50
      Height = 50
    end
    inherited paLeft: TPanel
      Width = 509
      inherited Panel6: TPanel
        Width = 509
        Height = 113
        inherited Label3: TLabel
          Width = 500
          Caption = 
            'Выберите эмиссию. Из левого списка в правый перенесите варианты ' +
            'возможного написания выбранной эмиссии.'
        end
        inherited xxxDBGrid: TxxxDBGrid
          Top = 40
          DataSource = dsIssuers
        end
      end
    end
    inherited paCenter: TPanel
      Left = 509
    end
  end
  inherited paRight: TPanel
    Left = 537
    Width = 400
    inherited Panel1: TPanel
      Width = 400
      Height = 137
      inherited Label1: TLabel
        Top = 81
        Width = 40
        Caption = 'Тип ц.б.'
      end
      object Label4: TLabel [1]
        Left = 5
        Top = 103
        Width = 56
        Height = 13
        Caption = 'Рег. номер'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton7: TSpeedButton [2]
        Left = 2
        Top = 51
        Width = 61
        Height = 23
        Hint = 'Обновить список'
        Caption = ' Эмитент'
        Margin = 0
        Spacing = 0
        OnClick = SpeedButton7Click
      end
      inherited lcName: TDBLookupComboBox
        Left = 64
        Top = 100
        Width = 328
        DataSource = nil
        KeyField = 'T030_ID'
        ListField = 'T026_SEC_REGN'
      end
      inherited fmSeachFrame: TfmSeachFrame
        Width = 400
        TabOrder = 3
        inherited paLeft01: TPanel
          Width = 64
        end
        inherited paLeft02: TPanel
          Left = 64
        end
        inherited paLeft03: TPanel
          Left = 252
        end
        inherited paLeft04: TPanel
          Left = 252
        end
        inherited paLeft05: TPanel
          Left = 182
        end
        inherited Panel1: TPanel
          Left = 373
        end
      end
      inherited fm31_Filter: Tfm31_Filter
        Width = 400
        TabOrder = 4
        inherited paLeft01: TPanel
          Width = 64
        end
        inherited paLeft02: TPanel
          Left = 64
        end
        inherited paLeft03: TPanel
          Left = 252
        end
        inherited paLeft04: TPanel
          Left = 252
        end
        inherited paLeft05: TPanel
          Left = 182
        end
        inherited Panel1: TPanel
          Left = 373
        end
        inherited chbType: TCheckBox
          Left = 264
        end
      end
      object lcSecType: TDBLookupComboBox
        Left = 64
        Top = 76
        Width = 328
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DropDownRows = 10
        KeyField = 'T027_ID'
        ListField = 'T027_SEC_TYPE'
        ListSource = dsSecType
        TabOrder = 1
        OnCloseUp = lcSecTypeCloseUp
        OnKeyDown = lcSecTypeKeyDown
      end
      object lcIssuers: TDBLookupComboBox
        Left = 64
        Top = 52
        Width = 328
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DropDownRows = 10
        KeyField = 'T028_ID'
        ListField = 'T028_SHOT_NAME'
        ListSource = dsIssuers
        TabOrder = 2
        OnCloseUp = lcIssuersCloseUp
        OnKeyDown = lcIssuersKeyDown
      end
    end
  end
  inherited odsLookup: TOracleDataSet
    SQL.Strings = (
      
        'SELECT    T030_ID,T028_PARENT_ID, T027_ID,T026_ID, T026_SEC_REGN' +
        ' || '#39' ('#39' || T010_ISIN_TRANSL || '#39' )'#39' T026_SEC_REGN'
      'FROM      V_405_SEC_REGN_MAIN'
      'where T028_PARENT_ID = :T028_ID'
      'AND T027_ID = :T027_ID'
      'ORDER BY  T026_SEC_REGN')
    Variables.Data = {
      0300000002000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543033305F494401000000000007000000543032
      365F49440100000000000D000000543032365F5345435F5245474E0100000000
      000E000000543032385F504152454E545F494401000000000007000000543032
      375F4944010000000000}
    Left = 824
    Top = 104
    object odsLookupT030_ID: TFloatField
      FieldName = 'T030_ID'
      Required = True
    end
    object odsLookupT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsLookupT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsLookupT028_PARENT_ID: TFloatField
      FieldName = 'T028_PARENT_ID'
    end
    object odsLookupT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
  end
  inherited dsLookup: TDataSource
    Left = 856
    Top = 104
  end
  inherited ActionList1: TActionList
    inherited actSelect: TAction
      Hint = 'Выбрать резидента'
    end
  end
  inherited oqToLeft: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_del_emis_link(:i_ID);'
      'END;')
    Variables.Data = {0300000001000000050000003A495F4944040000000000000000000000}
  end
  inherited oqToRight: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_add_emis_link(:i_ID, :i_PARENT_ID);'
      'END;')
    Variables.Data = {
      0300000002000000050000003A495F49440400000000000000000000000C0000
      003A495F504152454E545F4944040000000000000000000000}
  end
  inherited oqSelect: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_make_emission_main(:i_ID, :o_parent_id);'
      'END;')
    Variables.Data = {
      0300000002000000050000003A495F49440400000000000000000000000C0000
      003A4F5F504152454E545F4944040000000000000000000000}
  end
  inherited oqClearSelect: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Emissions.p_clear_emission_main(:i_ID);'
      'END;')
    Variables.Data = {0300000001000000050000003A495F4944040000000000000000000000}
  end
  object odsSecType: TOracleDataSet
    SQL.Strings = (
      'SELECT T027_ID,'#9'T028_PARENT_ID T028_ID, T027_SEC_TYPE'
      'FROM   V_405_SEC_TYPE_MAIN'
      'where T028_PARENT_ID = :T028_ID'
      'ORDER BY  T027_SEC_TYPE')
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543032375F49440100000000000D000000543032
      375F5345435F5459504501000000000007000000543032385F49440100000000
      00}
    Session = dmMain.OracleSession
    Left = 720
    Top = 80
    object odsSecTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsSecTypeT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsSecTypeT028_ID: TFloatField
      FieldName = 'T028_ID'
    end
  end
  object dsSecType: TDataSource
    DataSet = odsSecType
    Left = 752
    Top = 80
  end
  object odsIssuers: TOracleDataSet
    SQL.Strings = (
      
        'SELECT    T028_ID, T028_SHOT_NAME || '#39' ('#39' || T028_CODE || '#39' )'#39' T' +
        '028_SHOT_NAME'
      'FROM      V_405_ISSUER_MAIN'
      '--WHERE     T036_INCLUDE = '#39'Y'#39
      'ORDER BY  UPPER(T028_SHOT_NAME)'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D45010000000000}
    Session = dmMain.OracleSession
    AfterScroll = odsIssuersAfterScroll
    Left = 648
    Top = 56
    object odsIssuersT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsIssuersT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 514
    end
  end
  object dsIssuers: TDataSource
    DataSet = odsIssuers
    Left = 680
    Top = 56
  end
end

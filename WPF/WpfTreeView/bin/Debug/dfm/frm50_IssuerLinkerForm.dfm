inherited frm50_IssuerLinker: Tfrm50_IssuerLinker
  Left = 59
  Top = 176
  Caption = 'frm50_IssuerLinker'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object Bevel1: TBevel [0]
      Left = 0
      Top = 0
      Width = 50
      Height = 50
    end
    inherited paLeft: TPanel
      inherited Panel6: TPanel
        Height = 63
        inherited Label3: TLabel
          Caption = 
            'Выберите эмитента. Из левого списка в правый перенесите варианты' +
            ' возможного написания выбранного эмитента.'
        end
      end
    end
  end
  inherited paRight: TPanel
    inherited Panel1: TPanel
      Height = 113
      inherited Label1: TLabel
        Top = 77
        Width = 104
        Caption = 'Выбранный эмитент'
      end
      inherited lcName: TDBLookupComboBox
        Top = 91
        DataSource = nil
        KeyField = 'T028_ID'
        ListField = 'T028_SHOT_NAME'
      end
      inherited fmSeachFrame: TfmSeachFrame
        TabOrder = 3
      end
      object CheckBox1: TCheckBox
        Left = 6
        Top = 53
        Width = 91
        Height = 14
        Anchors = [akTop, akRight]
        Caption = 'Только банки'
        TabOrder = 1
        Visible = False
        OnClick = CheckBox1Click
      end
    end
  end
  inherited odsLookup: TOracleDataSet
    SQL.Strings = (
      
        'SELECT    T028_ID, T028_SHOT_NAME || '#39' ('#39' || T028_CODE || '#39' )'#39' T' +
        '028_SHOT_NAME, T036_ISBANK'
      'FROM      V_405_ISSUER_PARENT'
      'ORDER BY  UPPER(T028_SHOT_NAME)'
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000300000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D450100000000000B000000543033365F495342414E4B
      010000000000}
    object odsLookupT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsLookupT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsLookupT036_ISBANK: TStringField
      FieldName = 'T036_ISBANK'
      Required = True
      Size = 1
    end
  end
  inherited ActionList1: TActionList
    inherited actSelect: TAction
      Hint = 'Выбрать'
    end
    object actChMain: TAction
      Caption = 'Сделать главным'
    end
  end
  inherited oqToLeft: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_del_issuer_link(:i_ID);'
      'END;')
    Variables.Data = {0300000001000000050000003A495F4944040000000000000000000000}
  end
  inherited oqToRight: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_link(:i_ID, :i_PARENT_ID);'
      'END;')
    Variables.Data = {
      0300000002000000050000003A495F49440400000000000000000000000C0000
      003A495F504152454E545F4944040000000000000000000000}
  end
  inherited oqSelect: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_set_issuer_as_main(:i_ID, :ISBANK);'
      'END;')
    Variables.Data = {
      0300000002000000050000003A495F4944040000000000000000000000070000
      003A495342414E4B050000000000000000000000}
  end
  inherited oqClearSelect: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_del_issuer_link(:i_ID);'
      'END;')
    Variables.Data = {0300000001000000050000003A495F4944040000000000000000000000}
  end
end

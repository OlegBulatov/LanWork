inherited fm36_IssuerList: Tfm36_IssuerList
  Height = 230
  inherited Label1: TLabel
    Top = 4
    Width = 54
    Caption = 'Эмитенты:'
  end
  inherited gr01: TxxxDBGrid
    Top = 0
    Height = 207
    Columns = <
      item
        Expanded = False
        FieldName = 'T028_ID'
        PickList.Strings = ()
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T028_SHOT_NAME'
        PickList.Strings = ()
        Width = 205
        Visible = True
      end>
  end
  object chbFI: TCheckBox [2]
    Left = 103
    Top = 211
    Width = 178
    Height = 17
    Hint = 
      'Отображать только '#13#10'финансовых посредников'#13#10'для составления плат' +
      'ежного баланса РФ'
    Caption = 'Финансовые посредники (ПБ)'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = chbFIClick
  end
  inherited ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT    T028_ID, T028_SHOT_NAME'
      'FROM      V_NR_ISSUERS_SELECT_DIV'
      'WHERE     T028_FI_PB IN ('#39'Y'#39', :T028_FI_PB)'
      'ORDER BY  UPPER(T028_SHOT_NAME)'
      ' '
      ' ')
    Variables.Data = {
      03000000010000000B0000003A543032385F46495F5042050000000000000000
      000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D45010000000000}
    Top = 120
    object ods01T028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object ods01T028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
  end
  inherited ds01: TDataSource
    Top = 120
  end
  inherited PopupMenu: TPopupMenu
    Top = 149
  end
end

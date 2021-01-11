inherited frm50_IssuerBottom: Tfrm50_IssuerBottom
  Left = 160
  Top = 355
  Width = 877
  Height = 519
  Caption = 'Несвязанные эмитенты'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 866
    Height = 433
  end
  inherited paRight: TPanel
    Left = 869
    Height = 433
  end
  inherited paMain: TPanel
    Width = 866
    Height = 433
    inherited ToolBar2: TToolBar
      Top = 50
      Width = 866
      ButtonWidth = 43
      ShowCaptions = False
      inherited ToolButton18: TToolButton
        Left = 27
      end
      inherited ToolButton19: TToolButton
        Left = 54
      end
      inherited ToolButton4: TToolButton
        Left = 81
      end
      inherited ToolBar1: TToolBar
        Left = 89
      end
      inherited sp02: TToolButton
        Left = 158
      end
      inherited tbSimFilter: TToolButton
        Left = 166
      end
      inherited tbSep01: TToolButton
        Left = 206
      end
      inherited tlbSearch: TToolBar
        Left = 214
      end
      inherited ToolButton13: TToolButton
        Left = 274
      end
      inherited tbExcel: TToolButton
        Left = 282
        AutoSize = True
      end
      object ToolButton7: TToolButton
        Left = 309
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 317
        Top = 0
        Action = actGoToForm405
        AutoSize = True
        DropdownMenu = pmGoTo
        ImageIndex = 11
        Style = tbsDropDown
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 115
      Width = 866
      Height = 318
      ParentFont = False
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 184
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_CODE'
          PickList.Strings = ()
          Title.Caption = 'Код'
          Width = 136
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_ID'
          PickList.Strings = ()
          Title.Caption = 'Код месяца'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T025_ID'
          PickList.Strings = ()
          Title.Caption = 'Код типа эмитента'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_REGION'
          PickList.Strings = ()
          Title.Caption = 'Регион'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_INDUSTRY'
          PickList.Strings = ()
          Title.Caption = 'Отрасль'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SECTOR_NAME'
          PickList.Strings = ()
          Title.Caption = 'Сектор'
          Width = 200
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 73
      Width = 866
      inherited Panel1: TPanel
        Left = 839
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 94
      Width = 866
      inherited Panel1: TPanel
        Left = 839
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 866
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object Label1: TLabel
        Left = 251
        Top = 5
        Width = 12
        Height = 13
        Caption = 'по'
      end
      object chbPeriod: TCheckBox
        Left = 5
        Top = 4
        Width = 115
        Height = 17
        Hint = 'Дата появления эмитента в cправочнике'
        Caption = 'Дата появления c'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 0
      end
      inline Tfm01_Period1: Tfm36_MonthAll
        Left = 117
        Top = 1
        Width = 130
        TabOrder = 1
        inherited Label1: TLabel
          Width = 0
          Caption = '   Отчетный период c'
          Visible = False
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 4
          Width = 126
        end
        inherited dsPeriod: TDataSource
          Left = 88
          Top = 65530
        end
        inherited odsPeriod: TOracleDataSet
          Left = 56
          Top = 65530
        end
      end
      inline Tfm01_Period2: Tfm36_MonthAll
        Left = 266
        Top = 1
        Width = 130
        TabOrder = 2
        inherited Label1: TLabel
          Width = 0
          Caption = '   Отчетный период c'
          Visible = False
        end
        inherited lcbPeriod: TDBLookupComboBox
          Left = 4
          Width = 126
        end
        inherited dsPeriod: TDataSource
          Left = 88
          Top = 65530
        end
        inherited odsPeriod: TOracleDataSet
          Left = 56
          Top = 65530
        end
      end
      object chbHideFL: TCheckBox
        Left = 5
        Top = 26
        Width = 205
        Height = 17
        Hint = 'Дата появления эмитента в cправочнике'
        Caption = 'Исключать физ. лица'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 3
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 466
    Width = 869
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end>
    Visible = True
  end
  inherited pnlButtons: TPanel
    Top = 433
    Width = 869
    inherited OKBtn: TButton
      Left = 968
    end
    inherited CancelBtn: TButton
      Left = 1048
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Visible = True
    end
    inherited actDeleteAttributes: TAction
      Visible = True
    end
    inherited actEditAttributes: TAction
      Visible = True
    end
    object actGoToForm405: TAction
      Caption = 'К форме 405'
      Hint = 'Перейти к операциям формы 405...'
      OnExecute = actGoToForm405Execute
    end
    object actGoToForm711_31: TAction
      Caption = 'К форме 711 раздел 3.1'
      Hint = 'Перейти к операциям формы 711 раздел 3.1...'
      OnExecute = actGoToForm711_31Execute
    end
    object actGoToForm711_32: TAction
      Caption = 'К форме 711 раздел 3.2'
      Hint = 'Перейти к операциям формы 711 раздел 3.2...'
      OnExecute = actGoToForm711_32Execute
    end
    object actGoToForm405Rez: TAction
      Category = 'GoTo'
      Caption = 'К форме 405 - по резиденту'
      Hint = 'Перейти к форме 405 - по резиденту'
      OnExecute = actGoToForm405RezExecute
    end
    object actGoToForm405Nrez: TAction
      Category = 'GoTo'
      Caption = 'К форме 405 - по нерезиденту'
      Hint = 'Перейти к форме 405 - по нерезиденту'
      OnExecute = actGoToForm405NrezExecute
    end
    object actGoToForm405Iss: TAction
      Category = 'GoTo'
      Caption = 'К форме 405 - по эмитенту'
      Hint = 'Перейти к форме 405 - по эмитенту'
      OnExecute = actGoToForm405IssExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'#9'   T028_ID,'
      #9'   T028_SHOT_NAME,'
      #9'   T028_INN,'
      #9'   T025_ID,'
      #9'   T025_SHOT_NAME,'
      #9'   T028_COUNTRY_ID,'
      #9'   COUNTRY_NAME, '
      #9'   T028_CODE, T055_ID,'
      '                   T028_INDUSTRY_CODE,'
      '                   T028_INDUSTRY,'
      '                   T028_REGION_CODE,'
      '                   T028_REGION,'
      '       T140_ID,'
      '       T033_ID,'
      '       SECTOR_NAME'
      'FROM   V_405_ISSUER_NOT_LINKED V1'
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000F00000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D4501000000000008000000543032385F494E4E010000
      00000007000000543032355F49440100000000000E000000543032355F53484F
      545F4E414D450100000000000F000000543032385F434F554E5452595F494401
      00000000000C000000434F554E5452595F4E414D450100000000000900000054
      3032385F434F444501000000000007000000543035355F494401000000000012
      000000543032385F494E4455535452595F434F44450100000000000D00000054
      3032385F494E44555354525901000000000010000000543032385F524547494F
      4E5F434F44450100000000000B000000543032385F524547494F4E0100000000
      0007000000543134305F49440100000000000B000000534543544F525F4E414D
      45010000000000}
    AfterScroll = odsListAfterScroll
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListT025_ID: TFloatField
      FieldName = 'T025_ID'
      Required = True
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
    end
    object odsListCOUNTRY_NAME: TStringField
      FieldName = 'COUNTRY_NAME'
      Size = 250
    end
    object odsListT028_CODE: TStringField
      FieldName = 'T028_CODE'
      Size = 255
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListT028_INDUSTRY_CODE: TStringField
      FieldName = 'T028_INDUSTRY_CODE'
      Size = 255
    end
    object odsListT028_INDUSTRY: TStringField
      FieldName = 'T028_INDUSTRY'
      Size = 255
    end
    object odsListT028_REGION_CODE: TFloatField
      FieldName = 'T028_REGION_CODE'
    end
    object odsListT028_REGION: TStringField
      FieldName = 'T028_REGION'
      Size = 250
    end
    object odsListT140_ID: TIntegerField
      FieldName = 'T140_ID'
      Required = True
    end
    object odsListSECTOR_NAME: TStringField
      FieldName = 'SECTOR_NAME'
      Required = True
      Size = 512
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_issuer_add(:T028_id,'
      '                          :T028_shot_name,'
      '                          :T028_inn,'
      '                          :T025_id,'
      '                          :T028_country_id,'
      '                          :T028_industry_code,'
      '                          :T028_region_code,'
      '                          :T140_id,'
      '                          :T033_id,'
      '                          :T037_ID,'
      '                          NULL -- T028_CODE'
      '                              );'
      'END;'
      ''
      ' ')
    Variables.Data = {
      03000000090000000F0000003A543032385F53484F545F4E414D450500000000
      00000000000000080000003A543032355F494404000000000000000000000009
      0000003A543032385F494E4E050000000000000000000000100000003A543032
      385F434F554E5452595F4944040000000000000000000000080000003A543032
      385F4944040000000000000000000000130000003A543032385F494E44555354
      52595F434F4445050000000000000000000000110000003A543032385F524547
      494F4E5F434F4445040000000000000000000000080000003A543134305F4944
      040000000000000000000000080000003A543033335F49440400000000000000
      00000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_issuer_update(:T028_id,'
      '                          :T028_shot_name,'
      '                          :T028_inn,'
      '                          :T025_id,'
      '                          :T028_country_id,'
      '                          :T028_industry_code,'
      '                          :T028_region_code,'
      '                          :T140_id,'
      '                          :T033_id,'
      '                          :T037_ID'
      '                             );'
      ''
      'END;'
      ''
      ' ')
    Variables.Data = {
      0300000009000000080000003A543032385F4944040000000000000000000000
      0F0000003A543032385F53484F545F4E414D4505000000000000000000000008
      0000003A543032355F4944040000000000000000000000090000003A54303238
      5F494E4E050000000000000000000000100000003A543032385F434F554E5452
      595F4944040000000000000000000000130000003A543032385F494E44555354
      52595F434F4445050000000000000000000000110000003A543032385F524547
      494F4E5F434F4445040000000000000000000000080000003A543134305F4944
      040000000000000000000000080000003A543033335F49440400000000000000
      00000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_issuer_delete(:T028_ID);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :o_result := Pk_405_Issuers.f_issuer_check(:T028_id,'
      '                                     :T028_shot_name,'
      '                                     :T025_id,'
      '                                     :T033_id,'
      '                                     :T028_inn,'
      '                                     :T028_country_id'
      '                                          );'
      'END;'
      ' ')
    Variables.Data = {
      03000000070000000F0000003A543032385F53484F545F4E414D450500000000
      00000000000000080000003A543032355F494404000000000000000000000009
      0000003A543032385F494E4E050000000000000000000000100000003A543032
      385F434F554E5452595F4944040000000000000000000000090000003A4F5F52
      4553554C54040000000000000000000000080000003A543032385F4944040000
      000000000000000000080000003A543033335F49440400000000000000000000
      00}
  end
  object pmGoTo: TPopupMenu
    Left = 280
    Top = 144
    object N4051: TMenuItem
      Action = actGoToForm405Rez
      Default = True
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object N4052: TMenuItem
      Action = actGoToForm405Nrez
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object N4053: TMenuItem
      Action = actGoToForm405Iss
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object N711311: TMenuItem
      Action = actGoToForm711_31
    end
    object N711321: TMenuItem
      Action = actGoToForm711_32
    end
  end
  object oqCount: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_Form_405.p_get_oper_count_by_issuer('
      '    :T028_ID,'
      '    :o_count_405,'
      '    :o_count_711_31,'
      '    :o_count_711_32'
      '    );'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000040000000C0000003A4F5F434F554E545F3430350400000000000000
      000000000F0000003A4F5F434F554E545F3731315F3331040000000000000000
      0000000F0000003A4F5F434F554E545F3731315F333204000000000000000000
      0000080000003A543032385F4944040000000000000000000000}
    Left = 136
    Top = 224
  end
end

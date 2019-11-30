inherited frm24_RezidList: Tfrm24_RezidList
  Left = 111
  Top = 434
  Width = 926
  Height = 447
  Caption = 'Реестр резидентов'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 915
    Height = 361
  end
  inherited paRight: TPanel
    Left = 918
    Height = 361
  end
  inherited paMain: TPanel
    Width = 915
    Height = 361
    inherited ToolBar2: TToolBar
      Width = 915
      inherited ToolButton4: TToolButton
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 915
      Height = 296
      AdvSettings.Indexes = <
        item
          FieldName = 'T012_CODE'
          SortType = stAsc
        end
        item
          FieldName = 'T012_NAME'
          SortType = stAsc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T012_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_CODE'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T033_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REGION_NAME'
          PickList.Strings = ()
          Title.Caption = 'Регион'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INDUSTRY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Отрасль'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T012_FICT_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Признак фикт-ти'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_ID'
          PickList.Strings = ()
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 915
      inherited Panel1: TPanel
        Left = 888
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 915
      inherited Panel1: TPanel
        Left = 888
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 394
    Width = 918
  end
  inherited pnlButtons: TPanel
    Top = 361
    Width = 918
    inherited OKBtn: TButton
      Left = 760
    end
    inherited CancelBtn: TButton
      Left = 840
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T012_ID,'
      '       T012_NAME,'
      '       T012_CODE,'
      '       T012_REGION_CODE,'
      '       REGION_NAME,'
      '       T012_INDUSTRY_CODE,'
      '       INDUSTRY_NAME,'
      '       T033_ID,'
      '       T033_NAME,'
      '       T012_FICT_STATE,'
      '       T012_FICT_STATE_DESC,'
      '       T025_ID,'
      '       T037_ID,'
      '       T028_COUNTRY,'
      '       T140_ID,'
      '       T140_SECTOR_NAME'
      'FROM  V_405_REZID_PARENT')
    QBEDefinition.QBEFieldDefs = {
      040000001000000009000000543031325F4E414D450100000000000900000054
      3031325F434F444501000000000009000000543033335F4E414D450100000000
      0007000000543033335F494401000000000007000000543031325F4944010000
      0000000B000000524547494F4E5F4E414D450100000000000D000000494E4455
      535452595F4E414D4501000000000010000000543031325F524547494F4E5F43
      4F444501000000000012000000543031325F494E4455535452595F434F444501
      00000000000F000000543031325F464943545F53544154450100000000001400
      0000543031325F464943545F53544154455F4445534301000000000007000000
      543033375F494401000000000007000000543032355F49440100000000000C00
      0000543032385F434F554E54525901000000000007000000543134305F494401
      000000000010000000543134305F534543544F525F4E414D45010000000000}
    object odsListT012_ID: TFloatField
      FieldName = 'T012_ID'
      Required = True
    end
    object odsListT012_NAME: TStringField
      FieldName = 'T012_NAME'
      Size = 255
    end
    object odsListT033_NAME: TStringField
      FieldName = 'T033_NAME'
    end
    object odsListT012_CODE: TStringField
      FieldName = 'T012_CODE'
      Size = 50
    end
    object odsListT033_ID: TFloatField
      FieldName = 'T033_ID'
      Required = True
    end
    object odsListREGION_NAME: TStringField
      FieldName = 'REGION_NAME'
      Size = 250
    end
    object odsListINDUSTRY_NAME: TStringField
      FieldName = 'INDUSTRY_NAME'
      Size = 255
    end
    object odsListT012_REGION_CODE: TFloatField
      FieldName = 'T012_REGION_CODE'
    end
    object odsListT012_INDUSTRY_CODE: TStringField
      FieldName = 'T012_INDUSTRY_CODE'
      Size = 255
    end
    object odsListT012_FICT_STATE: TStringField
      FieldName = 'T012_FICT_STATE'
      Required = True
      Size = 1
    end
    object odsListT012_FICT_STATE_DESC: TStringField
      FieldName = 'T012_FICT_STATE_DESC'
      Size = 3
    end
    object odsListT025_ID: TFloatField
      FieldName = 'T025_ID'
      Required = True
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
      Required = True
    end
    object odsListT028_COUNTRY: TStringField
      FieldName = 'T028_COUNTRY'
      Required = True
      Size = 255
    end
    object odsListT140_ID: TFloatField
      FieldName = 'T140_ID'
    end
    object odsListT140_SECTOR_NAME: TStringField
      FieldName = 'T140_SECTOR_NAME'
      Size = 512
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_issuer_add('
      '    o_t028_id            => :T012_ID,'
      '    i_t028_shot_name     => :T012_NAME,'
      '    i_t028_inn           => :T012_CODE,'
      '    i_t025_id            => 9, -- резидент'
      '    i_t028_country_id    => '#39'643'#39', -- Россия'
      '    i_t028_industry_code => :T012_INDUSTRY_CODE,'
      '    i_t028_region_code   => :T012_REGION_CODE,'
      '    i_t140_id            => :T140_ID,'
      '    i_t033_id            => :T033_ID,'
      '    i_T037_ID            => :T037_ID'
      '    i_T028_CODE          => NULL'
      '    );'
      'END;'
      '')
    Variables.Data = {
      03000000080000000A0000003A543031325F4E414D4505000000000000000000
      00000A0000003A543031325F434F444505000000000000000000000008000000
      3A543033335F4944040000000000000000000000080000003A543031325F4944
      040000000000000000000000110000003A543031325F524547494F4E5F434F44
      45040000000000000000000000130000003A543031325F494E4455535452595F
      434F4445050000000000000000000000080000003A543033375F494404000000
      0000000000000000080000003A543134305F4944040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_issuer_update('
      '    i_t028_id            => :T012_ID,'
      '    i_t028_shot_name     => :T012_NAME,'
      '    i_t028_inn           => :T012_CODE,'
      '    i_t025_id            => 9, -- резидент'
      '    i_t028_country_id    => '#39'643'#39', -- Россия'
      '    i_t028_industry_code => :T012_INDUSTRY_CODE,'
      '    i_t028_region_code   => :T012_REGION_CODE,'
      '    i_t140_id            => :T140_ID,'
      '    i_t033_id            => :T033_ID,'
      '    i_T037_ID            => :T037_ID'
      '    );'
      'END;'
      '')
    Variables.Data = {
      0300000008000000080000003A543031325F4944040000000000000000000000
      0A0000003A543031325F4E414D450500000000000000000000000A0000003A54
      3031325F434F4445050000000000000000000000080000003A543033335F4944
      040000000000000000000000110000003A543031325F524547494F4E5F434F44
      45040000000000000000000000130000003A543031325F494E4455535452595F
      434F4445050000000000000000000000080000003A543134305F494404000000
      0000000000000000080000003A543033375F4944040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_issuer_delete(:T012_ID);'
      'END;'
      ' '
      ''
      ' ')
    Variables.Data = {
      0300000001000000080000003A543031325F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :o_result := Pk_405_Issuers.f_issuer_check('
      '    i_t028_id         => :T012_ID,'
      '    i_t028_shot_name  => :T012_NAME,'
      '    i_t025_id         => :T025_ID,'
      '    i_t033_id         => :T033_ID,'
      '    i_t028_inn        => :T012_CODE,'
      '    i_t028_country_id => :T028_COUNTRY,'
      '    i_T037_ID         => :T037_ID'
      '    );    '
      'END;'
      ' '
      ''
      ' ')
    Variables.Data = {
      03000000080000000A0000003A543031325F4E414D4505000000000000000000
      00000A0000003A543031325F434F444505000000000000000000000008000000
      3A543033335F4944040000000000000000000000090000003A4F5F524553554C
      54040000000000000000000000080000003A543031325F494404000000000000
      0000000000080000003A543032355F49440400000000000000000000000D0000
      003A543032385F434F554E545259050000000000000000000000080000003A54
      3033375F4944040000000000000000000000}
  end
end

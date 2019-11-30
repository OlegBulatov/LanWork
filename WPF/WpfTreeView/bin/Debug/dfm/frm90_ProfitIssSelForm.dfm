inherited frm90_ProfitIssSel: Tfrm90_ProfitIssSel
  Left = 167
  Top = 118
  Caption = 'Выбранные эмитенты'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      Top = 25
      List = False
      ShowCaptions = False
      Visible = False
      inherited ToolButton18: TToolButton
        Left = 23
      end
      inherited ToolButton19: TToolButton
        Left = 46
      end
      inherited ToolButton5: TToolButton
        Left = 69
        Action = actSelectIss
      end
      inherited ToolButton4: TToolButton
        Left = 92
      end
      inherited ToolBar1: TToolBar
        Left = 100
      end
      inherited sp02: TToolButton
        Left = 169
      end
      inherited tbSimFilter: TToolButton
        Left = 177
      end
      inherited tbSep01: TToolButton
        Left = 213
      end
      inherited tlbSearch: TToolBar
        Left = 221
        Width = 27
        ShowCaptions = False
      end
      inherited ToolButton13: TToolButton
        Left = 248
      end
      inherited tbExcel: TToolButton
        Left = 256
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 90
      Height = 184
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
          Title.Caption = 'Название'
          Width = 216
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T028_INN'
          PickList.Strings = ()
          Title.Caption = 'ИНН'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COUNTRY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Страна'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T036_REG_NUMBER'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T036_TICKER_SKRIN'
          PickList.Strings = ()
          Title.Caption = 'Тикер'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T036_ISBANK'
          PickList.Strings = ()
          Title.Caption = 'Признак банк'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T036_INCLUDE'
          PickList.Strings = ()
          Title.Caption = 'Связывать'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T036_COMPANY_HEAD'
          PickList.Strings = ()
          Title.Caption = 'Руководитель'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T036_MAIL_ADDRESS'
          PickList.Strings = ()
          Title.Caption = 'Адрес'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'T036_INDUSTRY'
          PickList.Strings = ()
          Title.Caption = 'Отрасль'
          Visible = False
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 48
      inherited paLeft01: TPanel
        Width = 54
      end
      inherited paLeft02: TPanel
        Left = 54
        inherited edSearchText: TEdit
          Height = 29
        end
      end
      inherited paLeft03: TPanel
        Left = 172
      end
      inherited paLeft04: TPanel
        Left = 197
        inherited edKeyField: TEdit
          Height = 29
        end
      end
      inherited paLeft05: TPanel
        Left = 298
      end
      inherited Panel1: TPanel
        inherited SpeedButton1: TSpeedButton
          Left = 9
        end
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 69
      inherited paLeft01: TPanel
        Width = 54
      end
      inherited paLeft02: TPanel
        Left = 54
        inherited edSearchText: TEdit
          Height = 29
        end
      end
      inherited paLeft03: TPanel
        Left = 172
      end
      inherited paLeft04: TPanel
        Left = 197
        inherited edKeyField: TEdit
          Height = 29
        end
      end
      inherited paLeft05: TPanel
        Left = 298
      end
      inherited Panel1: TPanel
        inherited SpeedButton1: TSpeedButton
          Left = 9
        end
      end
    end
    object pSecType: TPanel
      Left = 0
      Top = 0
      Width = 703
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object lcdSecType: TDBLookupComboBox
        Left = 0
        Top = 2
        Width = 706
        Height = 21
        Anchors = [akLeft, akTop, akRight, akBottom]
        KeyField = 'T027_ID'
        ListField = 'T027_SEC_TYPE'
        ListSource = dsSecType
        TabOrder = 0
      end
    end
  end
  inherited ActionList: TActionList
    object actSelectIss: TAction
      Caption = 'Выбрать'
      ImageIndex = 12
      OnExecute = actSelectIssExecute
      OnUpdate = actSelectIssUpdate
    end
    object actShowRez: TAction
      Caption = 'Только резидентов'
      Checked = True
      OnExecute = actShowRezExecute
    end
    object actShowNrez: TAction
      Caption = 'Только нерезидентов'
      OnExecute = actShowNrezExecute
    end
    object actShowAll: TAction
      Caption = 'Всех'
      OnExecute = actShowAllExecute
    end
  end
  inherited dsList: TDataSource
    OnDataChange = dsListDataChange
  end
  inherited PopupMenu: TPopupMenu
    object N1: TMenuItem [3]
      Action = actSelectIss
    end
    object mi09: TMenuItem [5]
      Action = actRefresh
    end
    object mi10: TMenuItem [8]
      Caption = 'Показывать...'
      object N2: TMenuItem
        Action = actShowRez
      end
      object N3: TMenuItem
        Action = actShowNrez
      end
      object N4: TMenuItem
        Action = actShowAll
      end
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' T028_ID,'
      ' T028_SHOT_NAME,'
      ' T025_SHOT_NAME,'
      ' T028_INN,'
      ' COUNTRY_NAME,'
      ' T036_REG_NUMBER,'
      ' T036_TICKER_SKRIN,'
      ' T036_ISBANK,'
      ' T036_INCLUDE,'
      ' T036_COMPANY_HEAD,'
      ' T036_MAIL_ADDRESS,'
      ' T028_INDUSTRY,'
      ' T028_INDUSTRY_CODE,'
      ' T037_SHOT_NAME,'
      ' T025_ID,'
      ' T037_ID,'
      ' T028_COUNTRY_ID,'
      ' T036_CR_ID,'
      ' T036_ISO_LAT'
      'FROM V_NR_REINV_ISS_SELECT'
      
        'WHERE T025_ID = DECODE(:T025_ID, 0, T025_ID, 9, DECODE(T025_ID, ' +
        '29, 29, 9), 8)'
      
        '--WHERE DECODE(T025_ID, 29, 9, T025_ID) = DECODE(:T025_ID, 0, DE' +
        'CODE(T025_ID, 29, 9, T025_ID), :T025_ID)')
    Variables.Data = {
      0300000001000000080000003A543032355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001300000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D450100000000000E000000543032355F53484F545F4E
      414D4501000000000008000000543032385F494E4E0100000000000C00000043
      4F554E5452595F4E414D450100000000000F000000543033365F5245475F4E55
      4D4245520100000000000B000000543033365F495342414E4B0100000000000C
      000000543033365F494E434C55444501000000000011000000543033365F434F
      4D50414E595F4845414401000000000011000000543033365F4D41494C5F4144
      445245535301000000000011000000543033365F5449434B45525F534B52494E
      0100000000000E000000543033375F53484F545F4E414D450100000000000700
      0000543032355F494401000000000007000000543033375F4944010000000000
      0F000000543032385F434F554E5452595F49440100000000000D000000543032
      385F494E44555354525901000000000012000000543032385F494E4455535452
      595F434F44450100000000000C000000543033365F49534F5F4C415401000000
      00000A000000543033365F43525F4944010000000000}
    AfterScroll = odsListAfterScroll
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT028_INN: TStringField
      FieldName = 'T028_INN'
      Size = 255
    end
    object odsListCOUNTRY_NAME: TStringField
      FieldName = 'COUNTRY_NAME'
      Size = 250
    end
    object odsListT036_REG_NUMBER: TStringField
      FieldName = 'T036_REG_NUMBER'
      Size = 255
    end
    object odsListT036_TICKER_SKRIN: TStringField
      FieldName = 'T036_TICKER_SKRIN'
      Size = 30
    end
    object odsListT036_ISBANK: TStringField
      FieldName = 'T036_ISBANK'
      Size = 1
    end
    object odsListT036_INCLUDE: TStringField
      FieldName = 'T036_INCLUDE'
      Size = 1
    end
    object odsListT036_COMPANY_HEAD: TStringField
      FieldName = 'T036_COMPANY_HEAD'
      Size = 355
    end
    object odsListT036_MAIL_ADDRESS: TStringField
      FieldName = 'T036_MAIL_ADDRESS'
      Size = 255
    end
    object odsListT037_SHOT_NAME: TStringField
      FieldName = 'T037_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListT025_ID: TFloatField
      FieldName = 'T025_ID'
      Required = True
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT028_COUNTRY_ID: TStringField
      FieldName = 'T028_COUNTRY_ID'
      Size = 255
    end
    object odsListT028_INDUSTRY: TStringField
      FieldName = 'T028_INDUSTRY'
      Size = 255
    end
    object odsListT028_INDUSTRY_CODE: TStringField
      FieldName = 'T028_INDUSTRY_CODE'
      Size = 255
    end
    object odsListT036_ISO_LAT: TStringField
      FieldName = 'T036_ISO_LAT'
      Size = 3
    end
    object odsListT036_CR_ID: TStringField
      FieldName = 'T036_CR_ID'
      Size = 3
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NResident.t_T028_rec;'
      '  v_inf_rec PK_NResident.t_T036_rec;'
      '  v_m029_rec PK_NResident.t_M029_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T028_SHOT_NAME := :T028_SHOT_NAME;'
      '  v_rec.T025_ID := :T025_ID;'
      '  v_rec.T028_INN := :T028_INN;'
      '  v_rec.T028_COUNTRY_ID := :T028_COUNTRY_ID;'
      '  v_rec.T028_INDUSTRY_CODE := :T028_INDUSTRY_CODE;'
      '  v_inf_rec.T036_ISBANK := :T036_ISBANK;'
      '  v_inf_rec.T036_INCLUDE := :T036_INCLUDE;'
      '  v_inf_rec.T036_TICKER_SKRIN := :T036_TICKER_SKRIN;'
      '  v_inf_rec.T036_MAIL_ADDRESS := :T036_MAIL_ADDRESS;'
      '  v_inf_rec.T036_REG_NUMBER := :T036_REG_NUMBER;'
      '  v_inf_rec.T036_COMPANY_HEAD := :T036_COMPANY_HEAD;'
      '  v_inf_rec.T037_ID := :T037_ID;'
      '  v_inf_rec.T036_CR_ID := :T036_CR_ID;'
      '  PK_NResident.p_issuer_inf_add(v_rec, v_inf_rec);'
      ''
      '  :T028_ID := v_rec.T028_ID;'
      ''
      '  v_M029_rec.M028_ID := :T028_ID;'
      '  PK_NResident.p_iss_sel_add(v_M029_rec);'
      'END;'
      ' '
      '')
    Variables.Data = {
      030000000E000000080000003A543032385F4944040000000000000000000000
      0F0000003A543032385F53484F545F4E414D4505000000000000000000000008
      0000003A543032355F4944040000000000000000000000090000003A54303238
      5F494E4E050000000000000000000000100000003A543032385F434F554E5452
      595F49440400000000000000000000000C0000003A543033365F495342414E4B
      0500000000000000000000000D0000003A543033365F494E434C554445050000
      000000000000000000120000003A543033365F5449434B45525F534B52494E05
      0000000000000000000000120000003A543033365F4D41494C5F414444524553
      53050000000000000000000000100000003A543033365F5245475F4E554D4245
      52050000000000000000000000120000003A543033365F434F4D50414E595F48
      454144050000000000000000000000130000003A543032385F494E4455535452
      595F434F4445050000000000000000000000080000003A543033375F49440400
      000000000000000000000B0000003A543033365F43525F494405000000000000
      0000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec PK_NResident.t_T028_rec;'
      '   v_inf_rec PK_NResident.t_T036_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.T028_SHOT_NAME := :T028_SHOT_NAME;'
      '  v_rec.T025_ID := :T025_ID;'
      '  v_rec.T028_INN := :T028_INN;'
      '  v_rec.T028_COUNTRY_ID := :T028_COUNTRY_ID;'
      '  v_rec.T028_INDUSTRY_CODE := :T028_INDUSTRY_CODE;'
      '  v_inf_rec.T036_ISBANK := :T036_ISBANK;'
      '  v_inf_rec.T036_INCLUDE := :T036_INCLUDE;'
      '  v_inf_rec.T036_TICKER_SKRIN := :T036_TICKER_SKRIN;'
      '  v_inf_rec.T036_MAIL_ADDRESS := :T036_MAIL_ADDRESS;'
      '  v_inf_rec.T036_REG_NUMBER := :T036_REG_NUMBER;'
      '  v_inf_rec.T036_COMPANY_HEAD := :T036_COMPANY_HEAD;'
      '  v_inf_rec.T037_ID := :T037_ID;'
      '  v_inf_rec.T036_CR_ID := :T036_CR_ID;'
      '  PK_NResident.p_issuer_inf_update(v_rec, v_inf_rec);'
      '  :T028_SHOT_NAME := v_rec.T028_SHOT_NAME;'
      '  :T025_ID := v_rec.T025_ID;'
      '  :T028_INN := v_rec.T028_INN;'
      '  :T028_COUNTRY_ID := v_rec.T028_COUNTRY_ID;'
      '  :T028_INDUSTRY_CODE := v_rec.T028_INDUSTRY_CODE;'
      '  :T036_ISBANK := v_inf_rec.T036_ISBANK;'
      '  :T036_INCLUDE := v_inf_rec.T036_INCLUDE;'
      '  :T036_TICKER_SKRIN := v_inf_rec.T036_TICKER_SKRIN;'
      '  :T036_MAIL_ADDRESS := v_inf_rec.T036_MAIL_ADDRESS;'
      '  :T036_REG_NUMBER := v_inf_rec.T036_REG_NUMBER;'
      '  :T036_COMPANY_HEAD := v_inf_rec.T036_COMPANY_HEAD;'
      '  :T037_ID := v_inf_rec.T037_ID;'
      '  :T036_CR_ID := v_inf_rec.T036_CR_ID;'
      'END;')
    Variables.Data = {
      030000000E000000080000003A543032385F4944040000000000000000000000
      0F0000003A543032385F53484F545F4E414D4505000000000000000000000008
      0000003A543032355F4944040000000000000000000000090000003A54303238
      5F494E4E050000000000000000000000100000003A543032385F434F554E5452
      595F49440400000000000000000000000C0000003A543033365F495342414E4B
      0500000000000000000000000D0000003A543033365F494E434C554445050000
      000000000000000000120000003A543033365F5449434B45525F534B52494E05
      0000000000000000000000120000003A543033365F4D41494C5F414444524553
      53050000000000000000000000100000003A543033365F5245475F4E554D4245
      52050000000000000000000000120000003A543033365F434F4D50414E595F48
      454144050000000000000000000000130000003A543032385F494E4455535452
      595F434F4445050000000000000000000000080000003A543033375F49440400
      000000000000000000000B0000003A543033365F43525F494405000000000000
      0000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '--  v_rec DPB_405_BOSS.Pk_Form_405.t_T028_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '--  v_rec.T028_ID := :T028_ID;'
      '--  DPB_405_BOSS.Pk_Form_405.p_issuer_delete(v_rec);'
      '  PK_NResident.p_iss_sel_delete(:T028_ID);'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543032385F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NResident.t_T028_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.T028_SHOT_NAME := :T028_SHOT_NAME;'
      '  v_rec.T025_ID := :T025_ID;'
      '  v_rec.T028_INN := :T028_INN;'
      '  v_rec.T028_COUNTRY_ID := :T028_COUNTRY_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  :o_result := PK_NResident.f_issuer_check(v_rec);'
      'END;'
      '')
    Variables.Data = {
      03000000060000000F0000003A543032385F53484F545F4E414D450500000000
      00000000000000080000003A543032355F494404000000000000000000000009
      0000003A543032385F494E4E050000000000000000000000100000003A543032
      385F434F554E5452595F4944040000000000000000000000080000003A543032
      385F4944040000000000000000000000090000003A4F5F524553554C54040000
      0008000000000000000000000000000000}
  end
  object odsSecType: TOracleDataSet
    SQL.Strings = (
      'select T027_ID, T027_SEC_TYPE'
      'from     V_NR_SEC_TYPE'
      'where T027_ID = 3 '
      'or T027_ID = 4'
      'order by T027_SEC_TYPE')
    QBEDefinition.QBEFieldDefs = {
      040000000200000007000000543032375F49440100000000000D000000543032
      375F5345435F54595045010000000000}
    Session = dmMain.OracleSession
    AfterScroll = odsSecTypeAfterScroll
    Left = 416
    Top = 23
    object odsSecTypeT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsSecTypeT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
  end
  object dsSecType: TDataSource
    DataSet = odsSecType
    Left = 456
    Top = 24
  end
end

inherited frm98_StrOwnTabListItem: Tfrm98_StrOwnTabListItem
  Left = 76
  Top = 155
  Caption = 'Структура владения'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paMain: TPanel
    inherited ToolBar2: TToolBar
      Top = 21
      inherited ToolButton5: TToolButton
        Enabled = False
        Visible = False
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 86
      Height = 181
      Columns = <
        item
          Expanded = False
          FieldName = 'M030_BUY_NAME'
          PickList.Strings = ()
          Title.Caption = 'Собственник'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T025_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Тип собственника'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M030_PRC'
          PickList.Strings = ()
          Title.Caption = 'Процент'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M030_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Количество бумаг'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M050_TYPE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Тип инвестирования'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M031_NAME'
          PickList.Strings = ()
          Title.Caption = 'Источник данных'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M030_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Комментарий'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M030_ENTER_DESC'
          PickList.Strings = ()
          Title.Caption = 'Тип ввода'
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 44
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 65
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 703
      Height = 21
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      Visible = False
      object Label1: TLabel
        Left = 5
        Top = 3
        Width = 37
        Height = 13
        Caption = 'Версия'
      end
      object SpeedButton1: TSpeedButton
        Left = 296
        Top = 0
        Width = 119
        Height = 21
        Action = actDelVer
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          00001F7C1F7C1F7C1F7C1F7C00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C0000
          1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C1F7C1F7C00001F7C
          1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C000000001F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C000000001F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000000000000000001F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000000000000000001F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000001F7C1F7C00001F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C00000000000000001F7C1F7C1F7C1F7C000000001F7C
          1F7C1F7C1F7C1F7C00000000000000001F7C1F7C1F7C1F7C1F7C1F7C00000000
          1F7C1F7C1F7C1F7C000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000
          00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C}
      end
      object SpeedButton2: TSpeedButton
        Left = 176
        Top = 0
        Width = 119
        Height = 21
        Action = actAddVer
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CE07F1F7C1F7C1F7C1F7C
          1F7C1F7CE07F1F7CE07FE07F1F7CEF3DEF3DEF3DE07FE07FEF3DEF3DEF3DEF3D
          E07FE07F1F7C1F7C1F7CE07F0000000000000000000000000000000000000000
          E07F1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
          EF3D1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
          EF3D1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
          EF3D1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
          EF3D1F7C1F7CE07FE07FE07F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
          E07FE07F1F7C1F7CE07FE07F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
          E07FE07FE07F1F7C1F7C1F7C0000FF7FFF7FFF7FFF7F00000000000000000000
          1F7C1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7F0000FF7FFF7F00001F7C
          1F7C1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7F0000FF7F0000E07F1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C0000FF7FFF7FFF7FFF7F000000001F7CE07FE07F
          1F7C1F7C1F7C1F7C1F7CE07F0000000000000000000000001F7C1F7C1F7CE07F
          E07F1F7C1F7C1F7CE07FE07F1F7C1F7C1F7C1F7CE07FE07F1F7C1F7C1F7C1F7C
          E07FE07F1F7CE07F1F7C1F7C1F7C1F7C1F7C1F7CE07F1F7C1F7C1F7C1F7C1F7C
          1F7C1F7CE07F}
      end
      object SpeedButton3: TSpeedButton
        Left = 416
        Top = 0
        Width = 105
        Height = 21
        Action = aktMakeActive
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F001F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F001F001F001F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F001F001F001F001F001F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F001F001F001F7C1F001F001F001F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F001F001F001F7C1F7C1F7C1F001F001F001F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F001F7C1F7C1F7C1F7C1F7C1F001F001F001F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F001F001F00
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F001F00
          1F001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F00
          1F001F001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C}
      end
      object lcdVersion: TDBLookupComboBox
        Left = 51
        Top = 0
        Width = 119
        Height = 21
        KeyField = 'M011_ID'
        ListField = 'M011_NUMBER_DESC'
        ListSource = dsVersion
        TabOrder = 0
      end
    end
  end
  inherited ActionList: TActionList
    object actAddVer: TAction
      Caption = 'Добавить версию'
      ImageIndex = 0
      OnExecute = actAddVerExecute
      OnUpdate = actAddVerUpdate
    end
    object actDelVer: TAction
      Caption = 'Удалить версию'
      ImageIndex = 2
      OnExecute = actDelVerExecute
      OnUpdate = actDelVerUpdate
    end
    object aktMakeActive: TAction
      Caption = 'По умолчанию'
      Enabled = False
      ImageIndex = 22
      OnExecute = aktMakeActiveExecute
      OnUpdate = aktMakeActiveUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT M030_ID,'
      ' M030_BUY_NAME,'
      ' T028_ID,'
      ' M030_PRC,'
      ' M050_TYPE,'
      ' M050_TYPE_DESC,'
      ' M031_ID,'
      ' M031_NAME,'
      ' M030_COMMENT,'
      ' T025_SHOT_NAME,'
      ' M011_ID,'
      ' M030_COUNT,'
      ' M030_ENTER_PROC,'
      ' M030_ENTER_DESC'
      'FROM V_NR_ISSUER_STRUCT'
      'WHERE M011_ID = :M011_ID')
    Variables.Data = {
      0300000001000000080000003A4D3031315F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000E0000000D0000004D3033305F4255595F4E414D4501000000000008
      0000004D3033305F505243010000000000090000004D3035305F545950450100
      00000000070000004D3033305F494401000000000007000000543032385F4944
      0100000000000E0000004D3035305F545950455F444553430100000000000700
      00004D3033315F4944010000000000090000004D3033315F4E414D4501000000
      00000C0000004D3033305F434F4D4D454E540100000000000E00000054303235
      5F53484F545F4E414D45010000000000070000004D3031315F49440100000000
      000A0000004D3033305F434F554E540100000000000F0000004D3033305F454E
      5445525F50524F430100000000000F0000004D3033305F454E5445525F444553
      43010000000000}
    Left = 96
    object odsListM030_ID: TFloatField
      FieldName = 'M030_ID'
      Required = True
    end
    object odsListM030_BUY_NAME: TStringField
      FieldName = 'M030_BUY_NAME'
      Size = 255
    end
    object odsListM030_PRC: TFloatField
      FieldName = 'M030_PRC'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TYPE: TIntegerField
      FieldName = 'M050_TYPE'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListM050_TYPE_DESC: TStringField
      FieldName = 'M050_TYPE_DESC'
      Size = 11
    end
    object odsListM031_ID: TFloatField
      FieldName = 'M031_ID'
    end
    object odsListM031_NAME: TStringField
      FieldName = 'M031_NAME'
      Required = True
      Size = 50
    end
    object odsListM030_COMMENT: TStringField
      FieldName = 'M030_COMMENT'
      Size = 255
    end
    object odsListT025_SHOT_NAME: TStringField
      FieldName = 'T025_SHOT_NAME'
      Required = True
      Size = 255
    end
    object odsListM011_ID: TFloatField
      FieldName = 'M011_ID'
      Required = True
    end
    object odsListM030_COUNT: TFloatField
      FieldName = 'M030_COUNT'
      Required = True
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListM030_ENTER_PROC: TStringField
      FieldName = 'M030_ENTER_PROC'
      Required = True
      Size = 1
    end
    object odsListM030_ENTER_DESC: TStringField
      FieldName = 'M030_ENTER_DESC'
      Size = 12
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M030_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M030_PRC := :M030_PRC;'
      '  v_rec.M030_ENTER_PROC := :M030_ENTER_PROC;'
      '  v_rec.M030_COUNT := :M030_COUNT;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.M050_TYPE := :M050_TYPE;'
      '  v_rec.M011_ID := :M011_ID;'
      '  v_rec.M031_ID := :M031_ID;'
      '  v_rec.M030_COMMENT := :M030_COMMENT;'
      '  Pk_NResident.p_str_ownership_add(v_rec);'
      '  :M030_ID := v_rec.M030_ID;'
      'END;'
      '')
    Variables.Data = {
      0300000009000000090000003A4D3033305F5052430400000000000000000000
      00080000003A543032385F49440400000000000000000000000A0000003A4D30
      35305F54595045040000000000000000000000080000003A4D3031315F494404
      0000000000000000000000080000003A4D3033305F4944040000000000000000
      000000080000003A4D3033315F49440400000000000000000000000D0000003A
      4D3033305F434F4D4D454E540500000000000000000000000B0000003A4D3033
      305F434F554E54040000000000000000000000100000003A4D3033305F454E54
      45525F50524F43050000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M030_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M030_ID := :M030_ID;'
      '  v_rec.M011_ID := :M011_ID;'
      '  v_rec.M030_PRC := :M030_PRC;'
      '  v_rec.M030_ENTER_PROC := :M030_ENTER_PROC;'
      '  v_rec.M030_COUNT := :M030_COUNT;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.M050_TYPE := :M050_TYPE;'
      '  v_rec.M031_ID := :M031_ID;'
      '  v_rec.M030_COMMENT := :M030_COMMENT;'
      '  Pk_NResident.p_str_ownership_update(v_rec);'
      'END;'
      '')
    Variables.Data = {
      0300000009000000080000003A4D3033305F4944040000000000000000000000
      090000003A4D3033305F505243040000000000000000000000080000003A5430
      32385F49440400000000000000000000000A0000003A4D3035305F5459504504
      0000000000000000000000080000003A4D3033315F4944040000000000000000
      0000000D0000003A4D3033305F434F4D4D454E54050000000000000000000000
      080000003A4D3031315F49440400000000000000000000000B0000003A4D3033
      305F434F554E54040000000000000000000000100000003A4D3033305F454E54
      45525F50524F43050000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M030_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M030_ID := :M030_ID;'
      '  v_rec.M011_ID := :M011_ID;'
      '  Pk_NResident.p_str_ownership_delete(v_rec);'
      'END;')
    Variables.Data = {
      0300000002000000080000003A4D3033305F4944040000000000000000000000
      080000003A4D3031315F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M030_rec;'
      '  v_result NUMBER;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M011_ID := :M011_ID;'
      '  v_rec.T028_ID := :T028_ID;'
      '  v_rec.M050_TYPE := :M050_TYPE;'
      '  v_rec.M030_ID := :M030_ID;'
      '  :O_RESULT := Pk_NResident.f_str_ownership_check(v_rec);'
      'END;'
      '')
    Variables.Data = {
      0300000005000000080000003A543032385F4944040000000000000000000000
      0A0000003A4D3035305F54595045040000000000000000000000080000003A4D
      3031315F4944040000000000000000000000090000003A4F5F524553554C5404
      00000008000000000000000000000000000000080000003A4D3033305F494404
      0000000000000000000000}
  end
  object odsVersion: TOracleDataSet
    SQL.Strings = (
      'SELECT M011_NUMBER,'
      ' M011_NUMBER_DESC,'
      ' M011_ID,'
      ' M010_ID,'
      ' M011_CALC_INCL'
      'FROM V_NR_VERSIONS'
      'WHERE M010_ID = :M010_ID'
      'ORDER BY M011_NUMBER')
    Variables.Data = {
      0300000001000000080000003A4D3031305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000005000000070000004D3031315F49440100000000000B0000004D3031
      315F4E554D424552010000000000070000004D3031305F49440100000000000E
      0000004D3031315F43414C435F494E434C010000000000100000004D3031315F
      4E554D4245525F44455343010000000000}
    Session = dmMain.OracleSession
    AfterScroll = odsVersionAfterScroll
    Left = 80
    Top = 23
    object odsVersionM011_ID: TFloatField
      FieldName = 'M011_ID'
      Required = True
    end
    object odsVersionM010_ID: TFloatField
      FieldName = 'M010_ID'
    end
    object odsVersionM011_NUMBER_DESC: TStringField
      FieldName = 'M011_NUMBER_DESC'
      Size = 47
    end
    object odsVersionM011_NUMBER: TFloatField
      FieldName = 'M011_NUMBER'
    end
    object odsVersionM011_CALC_INCL: TStringField
      FieldName = 'M011_CALC_INCL'
      Required = True
      Size = 1
    end
  end
  object dsVersion: TDataSource
    DataSet = odsVersion
    Left = 112
    Top = 24
  end
  object oqAddVer: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M011_rec;'
      '--  v_tek_id M011_VERSIONS.M011_ID%TYPE;'
      '  v_tek_id Pk_NResident.t_M011_id;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M010_ID := :M010_ID;'
      '  v_rec.M011_CALC_INCL := :M011_CALC_INCL;'
      '  v_tek_id := :M011_ID;'
      '  Pk_NResident.p_versions_add(v_rec, v_tek_id, :M010_INT_DATE);'
      '  :M011_ID := v_rec.M011_ID;'
      'END;'
      ''
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000080000003A4D3031305F4944040000000000000000000000
      0F0000003A4D3031315F43414C435F494E434C05000000000000000000000008
      0000003A4D3031315F49440400000000000000000000000E0000003A4D303130
      5F494E545F444154450C0000000000000000000000}
    Left = 528
    Top = 23
  end
  object oqDeleteVer: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NResident.t_M011_rec;'
      'BEGIN'
      '  v_rec.M011_ID := :M011_ID;'
      '  v_rec.M010_ID := :M010_ID;'
      '  v_rec.M011_NUMBER := :M011_NUMBER;'
      '  v_rec.M011_CALC_INCL := :M011_CALC_INCL;'
      '  PK_NResident.p_versions_delete(v_rec);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000080000003A4D3031315F4944040000000000000000000000
      0C0000003A4D3031315F4E554D4245520400000000000000000000000F000000
      3A4D3031315F43414C435F494E434C050000000000000000000000080000003A
      4D3031305F4944040000000000000000000000}
    Left = 560
    Top = 23
  end
  object oqMakeActive: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec PK_NResident.t_M011_rec;'
      'BEGIN'
      '  v_rec.M011_ID := :M011_ID;'
      '  v_rec.M010_ID := :M010_ID;'
      '  PK_NResident.p_versions_makeactive(v_rec);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A4D3031315F4944040000000000000000000000
      080000003A4D3031305F4944040000000000000000000000}
    Left = 592
    Top = 23
  end
end

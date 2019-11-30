inherited frm92_IndexList: Tfrm92_IndexList
  Left = 160
  Top = 75
  Caption = 'frm92_IndexList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 245
  end
  inherited spRight: TSplitter
    Height = 245
  end
  inherited Panel2: TPanel
    Top = 248
  end
  inherited paRight: TPanel
    Height = 245
  end
  inherited Panel1: TPanel
    Top = 281
    Height = 271
    inherited pc01: TPageControl
      Height = 269
      inherited ts01: TTabSheet
        Caption = 'Описание индекса'
        object m01: TDBMemo
          Left = 0
          Top = 0
          Width = 766
          Height = 241
          Align = alClient
          DataField = 'M023_DESCR'
          DataSource = dsList
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
  end
  inherited paMain: TPanel
    Height = 245
    inherited paToolBars: TPanel
      Top = 72
      inherited ToolBar2: TToolBar
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton7: TToolButton
          AutoSize = True
          Caption = 'Описание'
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 137
      Height = 108
      AdvSettings.Indexes = <
        item
          FieldName = 'T055_START_DATE'
          SortType = stAsc
        end
        item
          FieldName = 'M023_NAME'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 0
              LastCol = 1
              Caption = 'Период'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T055_START_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата начала'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T055_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'Наименование'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M024_VALUE'
          PickList.Strings = ()
          Title.Caption = 'Значение'
          Width = 200
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 95
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 116
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 773
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object Label1: TLabel
        Left = 5
        Top = 4
        Width = 37
        Height = 13
        Caption = 'Версия'
      end
      object SpeedButton1: TSpeedButton
        Left = 260
        Top = 1
        Width = 74
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
        Left = 179
        Top = 1
        Width = 81
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
        Left = 334
        Top = 1
        Width = 100
        Height = 21
        Action = actMakeActive
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
      object SpeedButton4: TSpeedButton
        Left = 434
        Top = 1
        Width = 98
        Height = 21
        Action = actCopyVer
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0080000000FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF008000000080000000FF00FF00FF00FF0000000000FFFF
          FF0080808000808080008080800080808000FFFFFF0000000000800000008000
          00008000000080000000800000008000000080000000FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF008000000080000000FF00FF00FF00FF0000000000FFFF
          FF0080808000808080008080800080808000FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0080000000FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF0080808000808080008080800080808000FFFFFF0000000000FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF0080808000FFFFFF00000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF0080808000FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object lcbVersion: TDBLookupComboBox
        Left = 59
        Top = 1
        Width = 119
        Height = 21
        KeyField = 'M027_ID'
        ListField = 'M027_NAME'
        ListSource = dsVersion
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 25
      Width = 773
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      object Label2: TLabel
        Left = 5
        Top = 4
        Width = 42
        Height = 13
        Caption = 'Месяц с'
      end
      object Label3: TLabel
        Left = 5
        Top = 27
        Width = 48
        Height = 13
        Caption = 'Месяц по'
      end
      object Label4: TLabel
        Left = 205
        Top = 4
        Width = 38
        Height = 13
        Caption = 'Индекс'
      end
      object lcb01: TDBLookupComboBox
        Left = 59
        Top = 0
        Width = 119
        Height = 21
        KeyField = 'T055_ID'
        ListField = 'T055_LONG_NAME'
        ListSource = ds01
        TabOrder = 0
      end
      object lcb02: TDBLookupComboBox
        Left = 59
        Top = 24
        Width = 119
        Height = 21
        KeyField = 'T055_ID'
        ListField = 'T055_LONG_NAME'
        ListSource = ds02
        TabOrder = 1
      end
      object lcb03: TDBLookupComboBox
        Left = 259
        Top = 0
        Width = 174
        Height = 21
        KeyField = 'M023_ID'
        ListField = 'M023_NAME'
        ListSource = ds03
        TabOrder = 2
      end
    end
  end
  inherited ActionList: TActionList
    object actAddVer: TAction
      Caption = 'Добавить'
      ImageIndex = 0
      OnExecute = actAddVerExecute
    end
    object actDelVer: TAction
      Caption = 'Удалить'
      ImageIndex = 2
      OnExecute = actDelVerExecute
      OnUpdate = actDelVerUpdate
    end
    object actMakeActive: TAction
      Caption = 'По умолчанию'
      ImageIndex = 22
      OnExecute = actMakeActiveExecute
      OnUpdate = actMakeActiveUpdate
    end
    object actCopyVer: TAction
      Caption = 'Скопировать'
      Hint = 'Скопировать версию'
      ImageIndex = 13
      OnExecute = actCopyVerExecute
      OnUpdate = actCopyVerUpdate
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'select * '
      'from V_NR_REINVEST_INDEX_DATA'
      'where M027_ID = :M027_ID'
      'and T055_ID >= :T055_ID1'
      'and T055_ID <= :T055_ID2'
      'and M023_ID = :M023_ID')
    Variables.Data = {
      0300000004000000080000003A4D3032375F4944040000000000000000000000
      090000003A543035355F494431040000000000000000000000090000003A5430
      35355F494432040000000000000000000000080000003A4D3032335F49440400
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000009000000070000004D3032335F4944010000000000090000004D3032
      335F4E414D450100000000000A0000004D3032335F4445534352010000000000
      070000004D3032375F4944010000000000070000004D3032345F494401000000
      00000A0000004D3032345F56414C554501000000000007000000543035355F49
      440100000000000F000000543035355F53544152545F44415445010000000000
      0E000000543035355F4C4F4E475F4E414D45010000000000}
    object odsListM023_ID: TFloatField
      FieldName = 'M023_ID'
      Required = True
    end
    object odsListM023_NAME: TStringField
      FieldName = 'M023_NAME'
      Required = True
      Size = 255
    end
    object odsListM023_DESCR: TStringField
      FieldName = 'M023_DESCR'
      Size = 4000
    end
    object odsListM027_ID: TFloatField
      FieldName = 'M027_ID'
      Required = True
    end
    object odsListM024_ID: TFloatField
      FieldName = 'M024_ID'
      Required = True
    end
    object odsListM024_VALUE: TFloatField
      FieldName = 'M024_VALUE'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
      Required = True
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M024_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M023_ID := :M023_ID;'
      '  v_rec.M024_VALUE := :M024_VALUE;'
      '  v_rec.M027_ID := :M027_ID;'
      '  v_rec.T055_ID := :T055_ID;'
      '  Pk_NResident.p_index_data_add(v_rec, :PERIOD_TYPE);'
      '  :M024_ID := v_rec.M024_ID;'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      03000000060000000B0000003A4D3032345F56414C5545040000000000000000
      000000080000003A543035355F4944040000000000000000000000080000003A
      4D3032335F4944040000000000000000000000080000003A4D3032345F494404
      0000000000000000000000080000003A4D3032375F4944040000000000000000
      0000000C0000003A504552494F445F54595045040000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '   v_rec Pk_NResident.t_M024_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M024_ID := :M024_ID;'
      '  v_rec.M023_ID := :M023_ID;'
      '  v_rec.M027_ID := :M027_ID;'
      '  v_rec.T055_ID := :T055_ID;'
      '  v_rec.M024_VALUE := :M024_VALUE;'
      '  Pk_NResident.p_index_data_update(v_rec, :PERIOD_TYPE);'
      'END;'
      '  ')
    Variables.Data = {
      0300000006000000080000003A4D3032335F4944040000000000000000000000
      080000003A4D3032345F49440400000000000000000000000B0000003A4D3032
      345F56414C55450400000000000000000000000C0000003A504552494F445F54
      595045040000000000000000000000080000003A4D3032375F49440400000000
      00000000000000080000003A543035355F4944040000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_NResident.p_index_data_delete(:M024_ID);'
      'END;'
      ' '
      ''
      ' ')
    Variables.Data = {
      0300000001000000080000003A4D3032345F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      
        '  :o_result := Pk_NResident.f_index_data_check(:M024_ID, :M023_I' +
        'D, :M027_ID, :T055_ID);'
      'END;'
      ' '
      ' ')
    Variables.Data = {
      0300000005000000090000003A4F5F524553554C540400000000000000000000
      00080000003A4D3032335F4944040000000000000000000000080000003A4D30
      32375F4944040000000000000000000000080000003A543035355F4944040000
      000000000000000000080000003A4D3032345F49440400000000000000000000
      00}
  end
  object odsVersion: TOracleDataSet
    SQL.Strings = (
      'SELECT V1.M027_ID, V1.M027_DEFAULT, V1.M027_NAME'
      'FROM V_NR_REINVEST_INDEX_VERSIONS V1'
      'ORDER BY M027_NAME'
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      0400000004000000070000004D3032375F49440100000000000C0000004D3032
      375F44454641554C54010000000000090000004D3032375F4E414D4501000000
      00000B0000004D3032375F4E554D424552010000000000}
    OnApplyRecord = odsVersionApplyRecord
    Session = dmMain.OracleSession
    AfterScroll = odsVersionAfterScroll
    Left = 8
    Top = 7
    object odsVersionM027_ID: TFloatField
      FieldName = 'M027_ID'
      Required = True
    end
    object odsVersionM027_DEFAULT: TStringField
      FieldName = 'M027_DEFAULT'
      Size = 1
    end
    object odsVersionM027_NAME: TStringField
      FieldName = 'M027_NAME'
      Required = True
      Size = 255
    end
  end
  object dsVersion: TDataSource
    DataSet = odsVersion
    Left = 40
    Top = 8
  end
  object oqAddVer: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M027_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M027_NAME := :M027_NAME;'
      '  Pk_NResident.p_index_version_add(v_rec);'
      '  :M027_ID := v_rec.M027_ID;'
      'END;'
      ''
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000A0000003A4D3032375F4E414D4505000000000000000000
      0000080000003A4D3032375F4944040000000000000000000000}
    Left = 544
    Top = 65535
  end
  object oqDeleteVer: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  PK_NResident.p_index_version_delete(:M027_ID);'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A4D3032375F4944040000000000000000000000}
    Left = 576
    Top = 65535
  end
  object oqMakeActive: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  PK_NResident.p_set_index_version_active(:M027_ID);'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000001000000080000003A4D3032375F4944040000000000000000000000}
    Left = 608
    Top = 65535
  end
  object oqDuplVer: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M027_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M027_ID := :M027_ID;'
      '  v_rec.M027_NAME := :M027_NAME;'
      '  :o_result := Pk_NResident.f_index_version_check(v_rec);'
      'END;'
      ' '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A4D3032375F4944040000000000000000000000
      0A0000003A4D3032375F4E414D45050000000000000000000000090000003A4F
      5F524553554C54040000000000000000000000}
    Left = 512
  end
  object oqCopyVer: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_rec Pk_NResident.t_M027_rec;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_rec.M027_ID := :M027_ID;'
      '  v_rec.M027_NAME := :M027_NAME;'
      '  Pk_NResident.p_index_version_copy(v_rec);'
      '  :M027_ID := v_rec.M027_ID;'
      'END;'
      ' '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A4D3032375F4944040000000000000000000000
      0A0000003A4D3032375F4E414D45050000000000000000000000}
    Left = 640
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      #9'V1.T055_LONG_NAME,'
      #9'V1.T055_ID'
      'FROM V_NR_TIME V1'
      'WHERE V1.T055_TYPE = '#39'M'#39
      'AND V1.T055_ID > 1762'
      'ORDER BY V1.T055_ID '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000E000000543035355F4C4F4E475F4E414D45010000000000
      07000000543035355F49440100000000000C0000004D3032375F44454641554C
      54010000000000}
    Session = dmMain.OracleSession
    AfterScroll = ods02AfterScroll
    Left = 184
    Top = 15
    object ods01T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object ods01T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 216
    Top = 16
  end
  object ods02: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      #9'V1.T055_LONG_NAME,'
      #9'V1.T055_ID'
      'FROM V_NR_TIME V1'
      'WHERE V1.T055_TYPE = '#39'M'#39
      'AND V1.T055_ID > 1762'
      'ORDER BY V1.T055_ID '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000E000000543035355F4C4F4E475F4E414D45010000000000
      07000000543035355F49440100000000000C0000004D3032375F44454641554C
      54010000000000}
    Session = dmMain.OracleSession
    AfterScroll = ods02AfterScroll
    Left = 184
    Top = 55
    object ods02T055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object ods02T055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
  end
  object ds02: TDataSource
    DataSet = ods02
    Left = 216
    Top = 56
  end
  object ods03: TOracleDataSet
    SQL.Strings = (
      'SELECT M023_ID, M023_NAME'
      'FROM V_NR_REINVEST_INDEX')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000070000004D3032335F4944010000000000090000004D3032
      335F4E414D45010000000000}
    Session = dmMain.OracleSession
    AfterScroll = ods02AfterScroll
    Left = 320
    Top = 31
    object ods03M023_ID: TFloatField
      FieldName = 'M023_ID'
      Required = True
    end
    object ods03M023_NAME: TStringField
      FieldName = 'M023_NAME'
      Required = True
      Size = 255
    end
  end
  object ds03: TDataSource
    DataSet = ods03
    Left = 352
    Top = 32
  end
end

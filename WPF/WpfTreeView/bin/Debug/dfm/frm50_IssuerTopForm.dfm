inherited frm50_IssuerTop: Tfrm50_IssuerTop
  Left = 198
  Top = 281
  Width = 711
  Caption = 'Связанные эмитенты'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 700
  end
  inherited paRight: TPanel
    Left = 700
  end
  inherited paMain: TPanel
    Width = 700
    inherited ToolBar2: TToolBar
      Width = 700
      Height = 22
      AutoSize = True
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
      object ToolButton5: TToolButton
        Left = 309
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 317
        Top = 0
        Action = actGoToForm405Iss
        AutoSize = True
        DropdownMenu = pmGoTo
        ImageIndex = 11
        Style = tbsDropDown
      end
      object ToolButton6: TToolButton
        Left = 357
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 12
        Style = tbsSeparator
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Top = 64
      Width = 700
      Height = 203
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
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Top = 22
      Width = 700
      inherited Panel1: TPanel
        Left = 673
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Top = 43
      Width = 700
      inherited Panel1: TPanel
        Left = 673
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 267
    Width = 703
    Panels = <
      item
        Width = 150
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
    Top = 286
    Width = 703
    inherited OKBtn: TButton
      Left = 805
    end
    inherited CancelBtn: TButton
      Left = 885
    end
  end
  inherited ActionList: TActionList
    object actGoToForm405Iss: TAction [0]
      Category = 'GoTo'
      Caption = 'К форме 405 - по эмитенту'
      Hint = 'Перейти к форме 405 - по эмитенту'
      OnExecute = actGoToForm405IssExecute
    end
    object actGoToForm405IssMain: TAction [2]
      Category = 'GoTo'
      Caption = 'К форме 405 - по всем эмитентам'
      Hint = 'Перейти к форме 405 - по всем эмитентам'
      OnExecute = actGoToForm405IssMainExecute
    end
    inherited actEditAttributes: TAction
      Enabled = True
      Visible = True
    end
    object actGoToForm711_31: TAction
      Category = 'GoTo'
      Caption = 'К форме 711 раздел 3.1'
      Hint = 'Перейти к операциям формы 711 раздел 3.1...'
      OnExecute = actGoToForm711_31Execute
    end
    object actGoToForm711_32: TAction
      Category = 'GoTo'
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
    object actGoToForm405RezMain: TAction
      Category = 'GoTo'
      Caption = 'К форме 405 - по всем резидентам'
      Hint = 'Перейти к форме 405 - по всем резидентам'
      OnExecute = actGoToForm405RezMainExecute
    end
    object actGoToForm405Nrez: TAction
      Category = 'GoTo'
      Caption = 'К форме 405 - по нерезиденту'
      Hint = 'Перейти к форме 405 - по нерезиденту'
      OnExecute = actGoToForm405NrezExecute
    end
    object actGoToForm405NrezMain: TAction
      Category = 'GoTo'
      Caption = 'К форме 405 - по всем нерезидентам'
      Hint = 'Перейти к форме 405 - по всем нерезидентам'
      OnExecute = actGoToForm405NrezMainExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      #9'   T028_ID,'
      #9'   T028_SHOT_NAME,'
      #9'   T036_ISBANK,'
      #9'   T036_INCLUDE,'
      #9'   T028_INN,'
      #9'   T025_ID,'
      #9'   T025_SHOT_NAME,'
      #9'   T036_TICKER_SKRIN,'
      #9'   T036_MAIL_ADDRESS,'
      #9'   T036_REG_NUMBER,'
      #9'   T036_COMPANY_HEAD,'
      #9'   T028_INDUSTRY,'
      #9'   T028_COUNTRY_ID,'
      #9'   COUNTRY_NAME, '
      #9'   T028_CODE,'
      '     T037_ID,'
      #9'   T028_INDUSTRY_CODE,'
      '                   T028_REGION_CODE,'
      '      T140_ID,'
      '      T033_ID,'
      '     SECTOR_NAME'
      'FROM   V_405_ISSUER_INF_LIST'
      'WHERE  T028_PARENT_ID = :T028_PARENT_ID'
      'AND    T028_ID <> T028_PARENT_ID'
      ' ')
    Variables.Data = {
      03000000010000000F0000003A543032385F504152454E545F49440400000000
      00000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001400000007000000543032385F49440100000000000E000000543032
      385F53484F545F4E414D450100000000000B000000543033365F495342414E4B
      0100000000000C000000543033365F494E434C55444501000000000008000000
      543032385F494E4E01000000000007000000543032355F49440100000000000E
      000000543032355F53484F545F4E414D4501000000000011000000543033365F
      5449434B45525F534B52494E01000000000011000000543033365F4D41494C5F
      414444524553530100000000000F000000543033365F5245475F4E554D424552
      01000000000011000000543033365F434F4D50414E595F484541440100000000
      000F000000543032385F434F554E5452595F49440100000000000C000000434F
      554E5452595F4E414D4501000000000009000000543032385F434F4445010000
      0000000D000000543032385F494E445553545259010000000000070000005430
      33375F494401000000000012000000543032385F494E4455535452595F434F44
      4501000000000010000000543032385F524547494F4E5F434F44450100000000
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
    object odsListT036_ISBANK: TStringField
      FieldName = 'T036_ISBANK'
      Size = 1
    end
    object odsListT036_INCLUDE: TStringField
      FieldName = 'T036_INCLUDE'
      Size = 1
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
    object odsListT036_TICKER_SKRIN: TStringField
      FieldName = 'T036_TICKER_SKRIN'
      Size = 30
    end
    object odsListT036_MAIL_ADDRESS: TStringField
      FieldName = 'T036_MAIL_ADDRESS'
      Size = 255
    end
    object odsListT036_REG_NUMBER: TStringField
      FieldName = 'T036_REG_NUMBER'
      Size = 255
    end
    object odsListT036_COMPANY_HEAD: TStringField
      FieldName = 'T036_COMPANY_HEAD'
      Size = 355
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
    object odsListT028_INDUSTRY: TStringField
      FieldName = 'T028_INDUSTRY'
      Size = 255
    end
    object odsListT037_ID: TFloatField
      FieldName = 'T037_ID'
    end
    object odsListT028_INDUSTRY_CODE: TStringField
      FieldName = 'T028_INDUSTRY_CODE'
      Size = 255
    end
    object odsListT028_REGION_CODE: TFloatField
      FieldName = 'T028_REGION_CODE'
      Required = True
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
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_405_Issuers.p_issuer_update(:T028_id,'
      '                             :T028_shot_name,'
      '                             :T028_inn,'
      '                             :T025_id,'
      '                             :T028_country_id,'
      '                             :T028_industry_code,'
      '                             :T028_region_code,'
      '                             :T140_id,'
      '                             :T033_id,'
      '                             :T037_ID'
      ');'
      'END;'
      ' ')
    Variables.Data = {
      030000000A000000080000003A543032385F4944040000000000000000000000
      0F0000003A543032385F53484F545F4E414D4505000000000000000000000008
      0000003A543032355F4944040000000000000000000000090000003A54303238
      5F494E4E050000000000000000000000100000003A543032385F434F554E5452
      595F4944040000000000000000000000130000003A543032385F494E44555354
      52595F434F4445050000000000000000000000110000003A543032385F524547
      494F4E5F434F4445050000000000000000000000080000003A543134305F4944
      040000000000000000000000080000003A543033335F49440400000000000000
      00000000080000003A543033375F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  :o_result := Pk_405_Issuers.f_issuer_check(:T028_id,'
      '                                       :T028_shot_name,'
      '                                       :T025_id,'
      '                                       :T033_id,'
      '                                       :T028_inn,'
      '                                       :T028_country_id,'
      '                                       :T037_ID'
      '                                            );'
      'END;'
      ' ')
    Variables.Data = {
      03000000080000000F0000003A543032385F53484F545F4E414D450500000000
      00000000000000080000003A543032355F494404000000000000000000000009
      0000003A543032385F494E4E050000000000000000000000100000003A543032
      385F434F554E5452595F4944040000000000000000000000080000003A543032
      385F4944040000000000000000000000090000003A4F5F524553554C54040000
      000000000000000000080000003A543033335F49440400000000000000000000
      00080000003A543033375F4944040000000000000000000000}
  end
  object pmGoTo: TPopupMenu
    Left = 280
    Top = 144
    object N4052: TMenuItem
      Action = actGoToForm405Rez
    end
    object N4053: TMenuItem
      Action = actGoToForm405RezMain
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object N4054: TMenuItem
      Action = actGoToForm405Nrez
    end
    object N4055: TMenuItem
      Action = actGoToForm405NrezMain
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object N4051: TMenuItem
      Action = actGoToForm405Iss
      Default = True
    end
    object N4056: TMenuItem
      Action = actGoToForm405IssMain
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
      'END;'
      ' ')
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

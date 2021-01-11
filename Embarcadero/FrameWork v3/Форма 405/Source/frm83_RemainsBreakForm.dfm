inherited frm83_RemainsBreak: Tfrm83_RemainsBreak
  Left = 306
  Top = 179
  Width = 1094
  Height = 609
  Caption = 'Изменения остатков по данным формы 711'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1083
    Height = 523
  end
  inherited paRight: TPanel
    Left = 1086
    Height = 523
  end
  inherited paMain: TPanel
    Width = 1083
    Height = 523
    inherited ToolBar2: TToolBar
      Width = 1083
      inherited ToolButton17: TToolButton
        Visible = False
      end
      inherited ToolButton18: TToolButton
        Visible = False
      end
      inherited ToolButton19: TToolButton
        Visible = False
      end
      inherited tbExcel: TToolButton
        AutoSize = True
      end
      object ToolButton7: TToolButton
        Left = 593
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 0
        Style = tbsSeparator
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1083
      Height = 458
      AdvSettings.Indexes = <
        item
          FieldName = 'NREZID_REMAIN'
          SortType = stAsc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 1
              LastCol = 4
              Caption = 'Счета нерезидентов'
            end
            item
              FirstCol = 5
              LastCol = 10
              Caption = 'Счета резидентов'
            end>
        end
        item
          Headers = <
            item
              FirstCol = 1
              LastCol = 1
              Caption = 'KL_S_UFN'
            end
            item
              FirstCol = 2
              LastCol = 2
              Caption = 'KL_L_N'
            end
            item
              FirstCol = 3
              LastCol = 3
              Caption = 'KL_ZG_N'
            end
            item
              FirstCol = 4
              LastCol = 4
              Caption = 'Всего по нерез.'
            end
            item
              FirstCol = 5
              LastCol = 5
              Caption = 'Всего по рез.'
            end
            item
              FirstCol = 6
              LastCol = 6
              Caption = 'KL_S_UFR'
            end
            item
              FirstCol = 7
              LastCol = 7
              Caption = 'KL_L_R'
            end
            item
              FirstCol = 8
              LastCol = 8
              Caption = 'KL_DU'
            end
            item
              FirstCol = 9
              LastCol = 9
              Caption = 'KO_S'
            end
            item
              FirstCol = 10
              LastCol = 10
              Caption = 'KO_DU'
            end>
        end
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'BANK_NAME'
          PickList.Strings = ()
          Title.Caption = 'КО'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KL_S_UFN_REMAIN'
          PickList.Strings = ()
          Title.Caption = 'Исх. остаток'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KL_L_N_REMAIN'
          PickList.Strings = ()
          Title.Caption = 'Исх. остаток'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KL_ZG_N_REMAIN'
          PickList.Strings = ()
          Title.Caption = 'Исх. остаток'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NREZID_REMAIN'
          PickList.Strings = ()
          Title.Caption = 'Исх. остаток'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REZID_REMAIN'
          PickList.Strings = ()
          Title.Caption = 'Исх. остаток'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KL_S_UFR_REMAIN'
          PickList.Strings = ()
          Title.Caption = 'Исх. остаток'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KL_L_R_REMAIN'
          PickList.Strings = ()
          Title.Caption = 'Исх. остаток'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KL_DU_REMAIN'
          PickList.Strings = ()
          Title.Caption = 'Исх. остаток'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KO_S_REMAIN'
          PickList.Strings = ()
          Title.Caption = 'Исх. остаток'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KO_DU_REMAIN'
          PickList.Strings = ()
          Title.Caption = 'Исх. остаток'
          Width = 80
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1083
      inherited Panel1: TPanel
        Left = 1056
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1083
      inherited Panel1: TPanel
        Left = 1056
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 556
    Width = 1086
  end
  inherited pnlButtons: TPanel
    Top = 523
    Width = 1086
    inherited OKBtn: TButton
      Left = 928
      Caption = 'ОК'
    end
    inherited CancelBtn: TButton
      Left = 1008
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
      'SELECT'
      '  BANK_NAME, T030_ID,'
      '  KL_S_UFN_REMAIN,'
      '  KL_L_N_REMAIN,'
      '  NREZID_REMAIN,'
      '  KL_S_UFR_REMAIN,'
      '  KL_L_R_REMAIN,'
      '  KL_ZG_N_REMAIN,'
      '  KL_DU_REMAIN,'
      '  KO_S_REMAIN,'
      '  KO_DU_REMAIN,'
      '  REZID_REMAIN'
      'FROM V_405_CALC_REMAINS_TAB_102'
      'WHERE T030_ID = :T030_ID'
      ' '
      ' '
      ' ')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000C00000007000000543033305F49440100000000000900000042414E
      4B5F4E414D450100000000000F0000004B4C5F535F55464E5F52454D41494E01
      00000000000D0000004B4C5F4C5F4E5F52454D41494E0100000000000D000000
      4E52455A49445F52454D41494E0100000000000F0000004B4C5F535F5546525F
      52454D41494E0100000000000D0000004B4C5F4C5F525F52454D41494E010000
      0000000C0000004B4C5F44555F52454D41494E0100000000000B0000004B4F5F
      535F52454D41494E0100000000000C0000004B4F5F44555F52454D41494E0100
      000000000E0000004B4C5F5A475F4E5F52454D41494E0100000000000C000000
      52455A49445F52454D41494E010000000000}
    MasterFields = 'T030_ID'
    object odsListBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 259
    end
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListKL_S_UFN_REMAIN: TFloatField
      FieldName = 'KL_S_UFN_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '### ### ### ##0.0000'
    end
    object odsListKL_L_N_REMAIN: TFloatField
      FieldName = 'KL_L_N_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '### ### ### ##0.0000'
    end
    object odsListNREZID_REMAIN: TFloatField
      FieldName = 'NREZID_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '### ### ### ##0.0000'
    end
    object odsListKL_S_UFR_REMAIN: TFloatField
      FieldName = 'KL_S_UFR_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '### ### ### ##0.0000'
    end
    object odsListKL_L_R_REMAIN: TFloatField
      FieldName = 'KL_L_R_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '### ### ### ##0.0000'
    end
    object odsListKL_DU_REMAIN: TFloatField
      FieldName = 'KL_DU_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '### ### ### ##0.0000'
    end
    object odsListKO_S_REMAIN: TFloatField
      FieldName = 'KO_S_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '### ### ### ##0.0000'
    end
    object odsListKO_DU_REMAIN: TFloatField
      FieldName = 'KO_DU_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '### ### ### ##0.0000'
    end
    object odsListKL_ZG_N_REMAIN: TFloatField
      FieldName = 'KL_ZG_N_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '### ### ### ##0.0000'
    end
    object odsListREZID_REMAIN: TFloatField
      FieldName = 'REZID_REMAIN'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '### ### ### ##0.0000'
    end
  end
  object oqFlag: TOracleQuery
    SQL.Strings = (
      'begin'
      
        #9'Pk_405_Calc_Remains.p_set_oper_flag(:T095_ID, :T055_ID, :T027_I' +
        'D, :T030_ID, :T097_BANK_CODE, :T097_OPER_FLAG);'
      'end; '
      ' '
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000006000000080000003A543039355F4944040000000000000000000000
      0F0000003A543039375F42414E4B5F434F44450500000000000000000000000F
      0000003A543039375F4F5045525F464C41470500000000000000000000000800
      00003A543035355F4944040000000000000000000000080000003A543032375F
      4944040000000000000000000000080000003A543033305F4944040000000000
      000000000000}
    Left = 328
    Top = 184
  end
end

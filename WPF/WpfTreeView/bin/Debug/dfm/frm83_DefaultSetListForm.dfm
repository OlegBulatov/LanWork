inherited frm83_DefaultSetList: Tfrm83_DefaultSetList
  Left = 344
  Top = 238
  Width = 1206
  Height = 543
  ActiveControl = nil
  Caption = 'frm83_DefaultSetList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 1195
    Height = 457
  end
  inherited paRight: TPanel
    Left = 1198
    Height = 457
  end
  inherited paMain: TPanel
    Width = 1195
    Height = 457
    inherited ToolBar2: TToolBar
      Width = 1195
      object ToolButton5: TToolButton
        Left = 589
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 597
        Top = 0
        Action = actShowEmissPayments
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 1195
      Height = 392
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OnCellClick = xxxDBGridCellClick
      AdvSettings.Indexes = <
        item
          FieldName = 'T028_SHOT_NAME'
          SortType = stAsc
        end
        item
          FieldName = 'T026_SEC_REGN'
          SortType = stAsc
        end
        item
          FieldName = 'PAY_DATE'
          SortType = stAsc
        end
        item
          FieldName = 'PAY_DESC'
          SortType = stDesc
        end>
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'IS_DEFAULT'
          PickList.Strings = ()
          ReadOnly = False
          Title.Caption = 'Дефолт'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T028_SHOT_NAME'
          PickList.Strings = ()
          Title.Caption = 'Эмитент'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T026_SEC_REGN'
          PickList.Strings = ()
          Title.Caption = 'Рег. номер ц.б.'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAY_DESC'
          PickList.Strings = ()
          Title.Caption = 'Тип'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAY_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата выплаты'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REM_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Количество ц.б.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REM_NOMINAL'
          PickList.Strings = ()
          Title.Caption = 'Номинал'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAY_NOM_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма платежа (ном.)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAY_USD_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма платежа (USD)'
          Width = 80
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 1195
      inherited Panel1: TPanel
        Left = 1168
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 1195
      inherited Panel1: TPanel
        Left = 1168
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 490
    Width = 1198
  end
  inherited pnlButtons: TPanel
    Top = 457
    Width = 1198
    inherited OKBtn: TButton
      Left = 1040
    end
    inherited CancelBtn: TButton
      Left = 1120
    end
  end
  inherited ActionList: TActionList
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actDeleteAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Enabled = False
      Visible = False
    end
    object actShowEmissPayments: TAction
      Caption = 'Все выплаты'
      ImageIndex = 40
      OnExecute = actShowEmissPaymentsExecute
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '   T030_ID,'
      '   T028_ID,'
      '   T028_SHOT_NAME,'
      '   T026_ID,'
      '   T026_SEC_REGN,'
      '   T027_ID,'
      '   T027_SEC_TYPE,'
      '   T092_ID,'
      '   T032_ID,'
      '   PAY_DESC,'
      '   PAY_DATE,'
      '   PAY_RATE,'
      '   REM_COUNT,'
      '   REM_NOMINAL,'
      '   PAY_USD_SUM,'
      '   PAY_NOM_SUM,'
      '   IS_DEFAULT as IS_DEFAULT'
      'FROM V_405_POSSIBLE_DEFAULTS'
      'where T055_ID = :T055_ID'
      'and   T027_ID = :T027_ID'
      ' ')
    Variables.Data = {
      0300000002000000080000003A543032375F4944040000000000000000000000
      080000003A543035355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001100000007000000543033305F49440100000000000D000000543032
      365F5345435F5245474E0100000000000E000000543032385F53484F545F4E41
      4D4501000000000007000000543032365F494401000000000007000000543032
      375F49440100000000000D000000543032375F5345435F545950450100000000
      00080000005041595F44415445010000000000080000005041595F5241544501
      000000000007000000543032385F494401000000000007000000543039325F49
      4401000000000007000000543033325F4944010000000000080000005041595F
      444553430100000000000900000052454D5F434F554E540100000000000B0000
      0052454D5F4E4F4D494E414C0100000000000B0000005041595F5553445F5355
      4D0100000000000B0000005041595F4E4F4D5F53554D0100000000000A000000
      49535F44454641554C54010000000000}
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT028_ID: TFloatField
      FieldName = 'T028_ID'
      Required = True
    end
    object odsListT028_SHOT_NAME: TStringField
      FieldName = 'T028_SHOT_NAME'
      Size = 255
    end
    object odsListT026_ID: TFloatField
      FieldName = 'T026_ID'
      Required = True
    end
    object odsListT026_SEC_REGN: TStringField
      FieldName = 'T026_SEC_REGN'
      Required = True
      Size = 265
    end
    object odsListT027_ID: TFloatField
      FieldName = 'T027_ID'
      Required = True
    end
    object odsListT027_SEC_TYPE: TStringField
      FieldName = 'T027_SEC_TYPE'
      Required = True
      Size = 255
    end
    object odsListT092_ID: TFloatField
      FieldName = 'T092_ID'
    end
    object odsListT032_ID: TFloatField
      FieldName = 'T032_ID'
    end
    object odsListPAY_DESC: TStringField
      FieldName = 'PAY_DESC'
      Size = 6
    end
    object odsListPAY_DATE: TDateTimeField
      FieldName = 'PAY_DATE'
    end
    object odsListPAY_RATE: TFloatField
      FieldName = 'PAY_RATE'
      DisplayFormat = '### ### ### ##0.000'
    end
    object odsListREM_COUNT: TFloatField
      FieldName = 'REM_COUNT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListREM_NOMINAL: TFloatField
      FieldName = 'REM_NOMINAL'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListPAY_USD_SUM: TFloatField
      FieldName = 'PAY_USD_SUM'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListPAY_NOM_SUM: TFloatField
      FieldName = 'PAY_NOM_SUM'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListIS_DEFAULT: TFloatField
      FieldName = 'IS_DEFAULT'
      ReadOnly = True
    end
  end
  object oqDefaultAdd: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_T150_rec PK_405_Default_NEW.t_T150_rec;'
      'BEGIN'
      '  v_T150_rec.T030_ID := :T030_ID;'
      '  v_T150_rec.T032_ID := :T032_ID;'
      '  v_T150_rec.T092_ID := :T092_ID;'
      '  PK_405_Default_NEW.p_default_add (v_T150_rec);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000003000000080000003A543033325F4944040000000000000000000000
      080000003A543039325F4944040000000000000000000000080000003A543033
      305F4944040000000000000000000000}
    Left = 520
    Top = 136
  end
  object oqDefaultDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_Default_NEW.p_default_delete (:T092_ID, :T032_ID);'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000002000000080000003A543039325F4944040000000000000000000000
      080000003A543033325F4944040000000000000000000000}
    Left = 552
    Top = 136
  end
end

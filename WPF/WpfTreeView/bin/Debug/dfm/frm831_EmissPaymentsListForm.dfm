inherited frm831_EmissPaymentsList: Tfrm831_EmissPaymentsList
  Left = 358
  Top = 110
  Width = 497
  Height = 832
  Caption = 'Выплаты эмиссии'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 486
    Height = 746
  end
  inherited paRight: TPanel
    Left = 489
    Height = 746
  end
  inherited paMain: TPanel
    Width = 486
    Height = 746
    inherited ToolBar2: TToolBar
      Width = 486
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 486
      Height = 681
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OnCellClick = xxxDBGridCellClick
      AdvSettings.Indexes = <
        item
          FieldName = 'PAY_DATE'
          SortType = stDesc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'IS_DEFAULT'
          PickList.Strings = ()
          Title.Caption = 'Дефолт'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAY_TYPE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Тип выплаты'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAY_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAY_RATE'
          PickList.Strings = ()
          Title.Caption = 'Ставка (%)'
          Width = 100
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 486
      inherited Panel1: TPanel
        Left = 459
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 486
      inherited Panel1: TPanel
        Left = 477
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 779
    Width = 489
  end
  inherited pnlButtons: TPanel
    Top = 746
    Width = 489
    inherited OKBtn: TButton
      Left = 331
    end
    inherited CancelBtn: TButton
      Left = 411
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
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT IS_DEFAULT,'
      '       T030_ID,'
      '       T092_ID,'
      '       T032_ID,'
      '       PAY_TYPE_DESC,'
      '       PAY_DATE,'
      '       PAY_RATE'
      'FROM   V_405_EMISS_PAYMENTS_DEF'
      'WHERE  T030_ID = :T030_ID')
    Variables.Data = {
      0300000001000000080000003A543033305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000700000007000000543033305F494401000000000007000000543039
      325F494401000000000007000000543033325F49440100000000000D00000050
      41595F545950455F44455343010000000000080000005041595F444154450100
      00000000080000005041595F524154450100000000000A00000049535F444546
      41554C54010000000000}
    object odsListT030_ID: TFloatField
      FieldName = 'T030_ID'
    end
    object odsListT092_ID: TFloatField
      FieldName = 'T092_ID'
    end
    object odsListT032_ID: TFloatField
      FieldName = 'T032_ID'
    end
    object odsListPAY_TYPE_DESC: TStringField
      FieldName = 'PAY_TYPE_DESC'
      Size = 9
    end
    object odsListPAY_DATE: TDateTimeField
      FieldName = 'PAY_DATE'
    end
    object odsListPAY_RATE: TFloatField
      FieldName = 'PAY_RATE'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListIS_DEFAULT: TFloatField
      FieldName = 'IS_DEFAULT'
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
    Left = 136
    Top = 224
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
    Left = 168
    Top = 224
  end
end

inherited frm83_DefaultRepaymentsList: Tfrm83_DefaultRepaymentsList
  Left = 139
  Top = 171
  Width = 759
  Height = 434
  Caption = 'График погашения дефолта'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 748
    Height = 348
  end
  inherited paRight: TPanel
    Left = 751
    Height = 348
  end
  inherited paMain: TPanel
    Width = 748
    Height = 348
    inherited ToolBar2: TToolBar
      Width = 748
      object ToolButton5: TToolButton
        Left = 589
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 6
        Style = tbsSeparator
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 748
      Height = 283
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'REPAY_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата погашения'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REPAY_NOM_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма в валюте эмиссии'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REPAY_USD_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма в $'
          Width = 150
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 748
      inherited Panel1: TPanel
        Left = 721
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 748
      inherited Panel1: TPanel
        Left = 721
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 381
    Width = 751
  end
  inherited pnlButtons: TPanel
    Top = 348
    Width = 751
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT T151_ID,'
      '       T150_ID,'
      '       REPAY_DATE,'
      '       REPAY_NOM_SUM,'
      '       REPAY_USD_SUM'
      'FROM   V_405_DEFAULT_REPAYS'
      'WHERE  T150_ID = :T150_ID')
    Variables.Data = {
      0300000001000000080000003A543135305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000007000000543135315F494401000000000007000000543135
      305F49440100000000000A00000052455041595F444154450100000000000D00
      000052455041595F4E4F4D5F53554D0100000000000D00000052455041595F55
      53445F53554D010000000000}
    object odsListT151_ID: TFloatField
      FieldName = 'T151_ID'
      Required = True
    end
    object odsListT150_ID: TFloatField
      FieldName = 'T150_ID'
      Required = True
    end
    object odsListREPAY_DATE: TDateTimeField
      FieldName = 'REPAY_DATE'
      Required = True
    end
    object odsListREPAY_NOM_SUM: TFloatField
      FieldName = 'REPAY_NOM_SUM'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
    object odsListREPAY_USD_SUM: TFloatField
      FieldName = 'REPAY_USD_SUM'
      DisplayFormat = '### ### ### ##0.0'
      EditFormat = '0.0'
    end
  end
  inherited oqAdd: TOracleQuery
    SQL.Strings = (
      'BEGIN '
      
        '  DPB_405_BOSS.PK_405_DEFAULT_NEW.P_REPAY_ADD (:T150_ID, :REPAY_' +
        'DATE );'
      'END; ')
    Variables.Data = {
      0300000002000000080000003A543135305F4944040000000000000000000000
      0B0000003A52455041595F444154450C0000000000000000000000}
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN '
      '  PK_405_DEFAULT_NEW.P_REPAY_EDIT(:T150_ID, :REPAY_DATE);'
      'END; ')
    Variables.Data = {
      0300000002000000080000003A543135305F4944040000000000000000000000
      0B0000003A52455041595F444154450C0000000000000000000000}
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN '
      '  PK_405_DEFAULT_NEW.P_REPAY_DELETE(:T151_ID);'
      'END; ')
    Variables.Data = {
      0300000001000000080000003A543135315F4944040000000000000000000000}
  end
  inherited oqDupl: TOracleQuery
    Variables.Data = {
      0300000004000000090000003A4F5F524553554C540400000000000000000000
      00080000003A543132385F49440300000000000000000000000A0000003A5431
      32385F444154450C0000000000000000000000080000003A543132375F494403
      0000000000000000000000}
  end
end

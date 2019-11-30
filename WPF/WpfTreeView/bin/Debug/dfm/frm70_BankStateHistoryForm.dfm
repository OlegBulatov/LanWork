inherited frm70_BankStateHistory: Tfrm70_BankStateHistory
  Left = 146
  Top = 244
  Width = 861
  Height = 632
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'История операций кредитной организации'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 850
    Height = 546
  end
  inherited paRight: TPanel
    Left = 850
    Height = 546
  end
  inherited paMain: TPanel
    Width = 850
    Height = 546
    inherited ToolBar2: TToolBar
      Width = 850
      ButtonWidth = 78
      inherited tbExcel: TToolButton
        AutoSize = True
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 850
      Height = 481
      AdvSettings.Enabled = False
      AdvSettings.HeadersLines = <
        item
          Headers = <
            item
              FirstCol = 1
              LastCol = 4
              Caption = 'Всего по операциям (тыс. $)'
            end
            item
              FirstCol = 5
              LastCol = 8
              Caption = 'Фиктивные операции (тыс. $)'
            end>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T055_LONG_NAME'
          PickList.Strings = ()
          Title.Caption = 'Квартал'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_IN'
          PickList.Strings = ()
          Title.Caption = 'в Россию'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_OUT'
          PickList.Strings = ()
          Title.Caption = 'из России'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_SALDO'
          PickList.Strings = ()
          Title.Caption = 'Сальдо'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_OB'
          PickList.Strings = ()
          Title.Caption = 'Оборот'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_IN_F'
          PickList.Strings = ()
          Title.Caption = 'в Россию'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_OUT_F'
          PickList.Strings = ()
          Title.Caption = 'из России'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_SALDO_F'
          PickList.Strings = ()
          Title.Caption = 'Сальдо'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_OB_F'
          PickList.Strings = ()
          Title.Caption = 'Оборот'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EVALUATION_STATE_DESC'
          PickList.Strings = ()
          Title.Caption = 'Состояние'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_CALC_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата расчета'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T002_CHANGE_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата изменения'
          Width = 60
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 850
      inherited Panel1: TPanel
        Left = 823
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 850
      inherited Panel1: TPanel
        Left = 823
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 579
    Width = 853
  end
  inherited pnlButtons: TPanel
    Top = 546
    Width = 853
    inherited OKBtn: TButton
      Left = 434
    end
    inherited CancelBtn: TButton
      Left = 514
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
    inherited actExcel: TAction
      Caption = ''
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      '-- по кварталам'
      'SELECT   T055_ID,'
      '         T055_LONG_NAME,'
      '         T055_START_DATE,'
      '         T002_BANK_CODE,'
      '         T002_BANK_NAME,'
      '         EVALUATION_STATE_DESC,'
      '         T002_CALC_DATE,'
      '         T002_CHANGE_DATE,'
      '         T001_OP_SUM_IN,'
      '         T001_OP_SUM_OUT,'
      '         T001_OP_SUM_SALDO,'
      '         T001_OP_SUM_OB,'
      '         T001_OP_SUM_IN_F,'
      '         T001_OP_SUM_OUT_F,'
      '         T001_OP_SUM_SALDO_F,'
      '         T001_OP_SUM_OB_F'
      'FROM     V_405_CLASS_KO_SALDO_Q'
      'WHERE    T055_ID <= :T055_Q_ID'
      'AND      T002_BANK_CODE = :T002_BANK_CODE'
      'UNION ALL'
      '-- по месяцам в отчетном квартале'
      'SELECT   T055_ID,'
      '         T055_LONG_NAME,'
      '         T055_START_DATE,'
      '         T002_BANK_CODE,'
      '         T002_BANK_NAME,'
      '         EVALUATION_STATE_DESC,'
      '         T002_CALC_DATE,'
      '         T002_CHANGE_DATE,'
      '         T001_OP_SUM_IN,'
      '         T001_OP_SUM_OUT,'
      '         T001_OP_SUM_SALDO,'
      '         T001_OP_SUM_OB,'
      '         T001_OP_SUM_IN_F,'
      '         T001_OP_SUM_OUT_F,'
      '         T001_OP_SUM_SALDO_F,'
      '         T001_OP_SUM_OB_F'
      'FROM     V_405_CLASS_KO_SALDO'
      'WHERE    T055_Q_ID = :T055_Q_ID'
      'AND      T002_BANK_CODE = :T002_BANK_CODE'
      'UNION ALL'
      '-- всего по КО'
      'SELECT     TO_NUMBER (NULL) T055_ID,'
      '           '#39'Всего по КО'#39' T055_LONG_NAME,'
      '           TO_DATE ('#39'01.01.1900'#39', '#39'DD.MM.YYYY'#39') T055_START_DATE,'
      '           '#39#39' T002_BANK_CODE,'
      '           '#39#39' T002_BANK_NAME,'
      '           '#39#39' EVALUATION_STATE_DESC,'
      '           TO_DATE (NULL) T002_CALC_DATE,'
      '           TO_DATE (NULL) T002_CHANGE_DATE,'
      '           SUM (T001_OP_SUM_IN),'
      '           SUM (T001_OP_SUM_OUT),'
      '           SUM (T001_OP_SUM_SALDO),'
      '           SUM (T001_OP_SUM_OB),'
      '           SUM (T001_OP_SUM_IN_F),'
      '           SUM (T001_OP_SUM_OUT_F),'
      '           SUM (T001_OP_SUM_SALDO_F),'
      '           SUM (T001_OP_SUM_OB_F)'
      'FROM       V_405_CLASS_KO_SALDO'
      'WHERE      T055_ID <= :T055_ID'
      'AND        T002_BANK_CODE = :T002_BANK_CODE'
      'GROUP BY   TO_NUMBER (NULL),'
      '           '#39'Всего по КО'#39','
      '           TO_DATE (NULL),'
      '           '#39#39','
      '           '#39#39','
      '           TO_NUMBER (NULL),'
      '           '#39#39','
      '           TO_DATE (NULL),'
      '           TO_DATE (NULL)'
      'ORDER BY   T055_START_DATE')
    Variables.Data = {
      0300000003000000080000003A543035355F4944040000000000000000000000
      0F0000003A543030325F42414E4B5F434F44450500000000000000000000000A
      0000003A543035355F515F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000100000000E000000543030325F42414E4B5F434F4445010000000000
      0E000000543030325F42414E4B5F4E414D450100000000000700000054303535
      5F49440100000000000E000000543035355F4C4F4E475F4E414D450100000000
      000F000000543035355F53544152545F444154450100000000000E0000005430
      30315F4F505F53554D5F494E0100000000000F000000543030315F4F505F5355
      4D5F4F555401000000000011000000543030315F4F505F53554D5F53414C444F
      0100000000000E000000543030315F4F505F53554D5F4F420100000000001000
      0000543030315F4F505F53554D5F494E5F460100000000001100000054303031
      5F4F505F53554D5F4F55545F4601000000000013000000543030315F4F505F53
      554D5F53414C444F5F4601000000000010000000543030315F4F505F53554D5F
      4F425F46010000000000150000004556414C554154494F4E5F53544154455F44
      4553430100000000000E000000543030325F43414C435F444154450100000000
      0010000000543030325F4348414E47455F44415445010000000000}
    MasterFields = 'T055_ID;T002_BANK_CODE;T055_Q_ID'
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
      Required = True
    end
    object odsListT055_LONG_NAME: TStringField
      FieldName = 'T055_LONG_NAME'
      Required = True
      Size = 255
    end
    object odsListT055_START_DATE: TDateTimeField
      FieldName = 'T055_START_DATE'
      Required = True
    end
    object odsListT002_BANK_CODE: TStringField
      FieldName = 'T002_BANK_CODE'
      Required = True
      Size = 9
    end
    object odsListT002_BANK_NAME: TStringField
      FieldName = 'T002_BANK_NAME'
      Size = 250
    end
    object odsListT001_OP_SUM_IN: TFloatField
      FieldName = 'T001_OP_SUM_IN'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_OUT: TFloatField
      FieldName = 'T001_OP_SUM_OUT'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_SALDO: TFloatField
      FieldName = 'T001_OP_SUM_SALDO'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_OB: TFloatField
      FieldName = 'T001_OP_SUM_OB'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_IN_F: TFloatField
      FieldName = 'T001_OP_SUM_IN_F'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_OUT_F: TFloatField
      FieldName = 'T001_OP_SUM_OUT_F'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_SALDO_F: TFloatField
      FieldName = 'T001_OP_SUM_SALDO_F'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListT001_OP_SUM_OB_F: TFloatField
      FieldName = 'T001_OP_SUM_OB_F'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListEVALUATION_STATE_DESC: TStringField
      FieldName = 'EVALUATION_STATE_DESC'
      Size = 21
    end
    object odsListT002_CALC_DATE: TDateTimeField
      FieldName = 'T002_CALC_DATE'
    end
    object odsListT002_CHANGE_DATE: TDateTimeField
      FieldName = 'T002_CHANGE_DATE'
    end
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_CLASSIFICATION.P_CALC_KO_DATA ('
      '    :I_T055_ID,'
      '    :O_NAME_1,'
      '    :O_NAME_2,'
      '    :O_NAME_3,'
      '    :O_NAME_4,'
      '    :O_NAME_5'
      '  );'
      'END;  ')
    Variables.Data = {
      03000000060000000A0000003A495F543035355F494405000000000000000000
      0000090000003A4F5F4E414D455F31050000000000000000000000090000003A
      4F5F4E414D455F32050000000000000000000000090000003A4F5F4E414D455F
      33050000000000000000000000090000003A4F5F4E414D455F34050000000000
      000000000000090000003A4F5F4E414D455F35050000000000000000000000}
  end
end

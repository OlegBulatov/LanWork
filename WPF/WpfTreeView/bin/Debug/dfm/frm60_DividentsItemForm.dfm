inherited frm60_DividentsItem: Tfrm60_DividentsItem
  Left = 387
  Top = 125
  Width = 933
  Height = 844
  Caption = 'Платежи'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spRight: TSplitter
    Left = 922
    Height = 707
  end
  object Label1: TLabel [1]
    Left = 558
    Top = 155
    Width = 104
    Height = 13
    Caption = 'Сумма налога ($)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 436
    Top = 155
    Width = 113
    Height = 13
    Caption = 'Сумма платежа ($)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited Panel2: TPanel
    Top = 707
    Width = 925
    Height = 91
    Visible = True
    object Label2: TLabel [0]
      Left = 689
      Top = 25
      Width = 40
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Строк:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText [1]
      Left = 731
      Top = 25
      Width = 75
      Height = 17
      Anchors = [akLeft, akBottom]
      DataField = 'COUNT_STR_PR'
      DataSource = dsCount
    end
    object Label4: TLabel [2]
      Left = 24
      Top = 25
      Width = 49
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Прямые'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel [3]
      Left = 24
      Top = 48
      Width = 43
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Портф.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel [4]
      Left = 689
      Top = 48
      Width = 40
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Строк:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText [5]
      Left = 731
      Top = 48
      Width = 75
      Height = 17
      Anchors = [akLeft, akBottom]
      DataField = 'COUNT_STR_PORTF'
      DataSource = dsCount
    end
    object Label7: TLabel [6]
      Left = 24
      Top = 71
      Width = 36
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Итого'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel [7]
      Left = 689
      Top = 71
      Width = 40
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Строк:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText [8]
      Left = 731
      Top = 71
      Width = 75
      Height = 17
      Anchors = [akLeft, akBottom]
      DataField = 'COUNT_STR'
      DataSource = dsCount
    end
    object Label9: TLabel [9]
      Left = 109
      Top = 4
      Width = 67
      Height = 13
      Caption = 'Кол-во ц.б.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel [10]
      Left = 207
      Top = 4
      Width = 120
      Height = 13
      Caption = 'Сумма платежей ($)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel [11]
      Left = 332
      Top = 4
      Width = 111
      Height = 13
      Caption = 'Сумма налогов ($)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel [12]
      Left = 447
      Top = 4
      Width = 126
      Height = 13
      Caption = 'Валовые платежи ($)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel [13]
      Left = 579
      Top = 4
      Width = 96
      Height = 13
      Caption = 'Процент налога'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited Panel3: TPanel
      Left = 920
      Width = 5
      Height = 91
      inherited OKBtn: TButton
        Left = 724
      end
      inherited CancelBtn: TButton
        Left = 804
      end
    end
    object DBEdit10: TDBEdit
      Left = 448
      Top = 23
      Width = 120
      Height = 21
      Hint = 'Валовый платеж ($)'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'TOTAL_SUM_OPS_PR'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 327
      Top = 23
      Width = 120
      Height = 21
      Hint = 'Сумма налога ($)'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'PROC_SUM_OPS_PR'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 206
      Top = 23
      Width = 120
      Height = 21
      Hint = 'Сумма платежа ($)'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'SUM_OPS_PR'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 85
      Top = 23
      Width = 120
      Height = 21
      Hint = 'Кол-во ц.б.'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'COUNT_OPS_PR'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 569
      Top = 23
      Width = 120
      Height = 21
      Hint = 'Процент налога'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'PROC_OPS_PR'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 5
    end
    object DBEdit1: TDBEdit
      Left = 85
      Top = 46
      Width = 120
      Height = 21
      Hint = 'Кол-во ц.б.'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'COUNT_OPS_PORTF'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 206
      Top = 46
      Width = 120
      Height = 21
      Hint = 'Сумма платежа ($)'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'SUM_OPS_PORTF'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 327
      Top = 46
      Width = 120
      Height = 21
      Hint = 'Сумма налога ($)'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'PROC_SUM_OPS_PORTF'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 448
      Top = 46
      Width = 120
      Height = 21
      Hint = 'Валовый платеж ($)'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'TOTAL_SUM_OPS_PORTF'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 569
      Top = 46
      Width = 120
      Height = 21
      Hint = 'Процент налога'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'PROC_OPS_PORTF'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 10
    end
    object DBEdit13: TDBEdit
      Left = 85
      Top = 69
      Width = 120
      Height = 21
      Hint = 'Кол-во ц.б.'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'COUNT_OPS'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 11
    end
    object DBEdit14: TDBEdit
      Left = 206
      Top = 69
      Width = 120
      Height = 21
      Hint = 'Сумма платежа ($)'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'SUM_OPS'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 12
    end
    object DBEdit15: TDBEdit
      Left = 327
      Top = 69
      Width = 120
      Height = 21
      Hint = 'Сумма налога ($)'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'PROC_SUM_OPS'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 13
    end
    object DBEdit16: TDBEdit
      Left = 448
      Top = 69
      Width = 120
      Height = 21
      Hint = 'Валовый платеж ($)'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'TOTAL_SUM_OPS'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 14
    end
    object DBEdit17: TDBEdit
      Left = 569
      Top = 69
      Width = 120
      Height = 21
      Hint = 'Процент налога'
      Anchors = [akLeft, akBottom]
      Color = clBtnFace
      DataField = 'PROC_OPS'
      DataSource = dsCount
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 15
    end
  end
  inherited paRight: TPanel
    Left = 925
    Height = 707
  end
  inherited paMain: TPanel
    Width = 922
    Height = 707
    inherited paToolBars: TPanel
      Width = 922
      inherited ToolBar2: TToolBar
        Width = 922
        inherited ToolButton18: TToolButton
          Enabled = False
          Visible = False
        end
        inherited ToolButton5: TToolButton
          Enabled = False
          Visible = False
        end
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Width = 922
      Height = 642
      AdvSettings.HeadersLines = <
        item
          Headers = <>
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'OWNER_NAME'
          PickList.Strings = ()
          Title.Caption = 'Собственник'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_DATE_OP'
          PickList.Strings = ()
          Title.Caption = 'Дата операции'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_COUNT'
          PickList.Strings = ()
          Title.Caption = 'Кол-во ц.б.'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T001_OP_SUM_CROSS'
          PickList.Strings = ()
          Title.Caption = 'Сумма платежа ($)'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M079_PROC_SUM'
          PickList.Strings = ()
          Title.Caption = 'Сумма налога ($)'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M079_TOTAL_SUM'
          PickList.Strings = ()
          Title.Caption = 'Валовый платеж ($)'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M079_PROC_VALUE'
          PickList.Strings = ()
          Title.Caption = 'Процент налога'
          Width = 76
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
          FieldName = 'M079_CALC_TYPE'
          PickList.Strings = ()
          Title.Caption = 'Тип расчета'
          Width = 124
          Visible = True
        end>
    end
    inherited fmSeach: TfmSeachFrame
      Width = 922
      inherited Panel1: TPanel
        Left = 895
      end
    end
    inherited fm31_Filter: Tfm31_Filter
      Width = 922
      inherited Panel1: TPanel
        Left = 895
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 798
    Width = 925
  end
  inherited ActionList: TActionList
    Top = 131
    inherited actAddAttributes: TAction
      Enabled = False
      Visible = False
    end
    inherited actEditAttributes: TAction
      Hint = 'Изменить состав группы резидентов...'
    end
  end
  inherited dsList: TDataSource
    Top = 131
  end
  inherited PopupMenu: TPopupMenu
    Top = 163
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' T001_ID,'
      ' M050_ID,'
      ' M030_ID,'
      ' OWNER_NAME,'
      ' T001_DATE_OP,'
      ' T001_OP_COUNT,'
      ' T001_OP_SUM_CROSS,'
      ' M079_PROC_SUM,'
      ' M079_TOTAL_SUM,'
      ' M079_PROC_VALUE,'
      ' M079_CALC_TYPE,'
      ' M079_TAX_SUM,'
      ' M050_TYPE,'
      ' M050_TYPE_DESC'
      'FROM V_NR_DIVIDENDS_SUM'
      'WHERE M050_ID = :M050_ID')
    Variables.Data = {
      0300000001000000080000003A4D3035305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000E00000007000000543030315F49440100000000000C000000543030
      315F444154455F4F500100000000000D000000543030315F4F505F434F554E54
      010000000000070000004D3035305F49440100000000000E0000004D3037395F
      544F54414C5F53554D0100000000000D0000004D3037395F50524F435F53554D
      0100000000000F0000004D3037395F50524F435F56414C55450100000000000E
      0000004D3037395F43414C435F5459504501000000000011000000543030315F
      4F505F53554D5F43524F5353010000000000070000004D3033305F4944010000
      0000000C0000004D3037395F5441585F53554D010000000000090000004D3035
      305F545950450100000000000E0000004D3035305F545950455F444553430100
      000000000A0000004F574E45525F4E414D45010000000000}
    MasterFields = 'M050_ID'
    AfterOpen = odsListAfterRefresh
    AfterRefresh = odsListAfterRefresh
    Top = 131
    object odsListT001_ID: TFloatField
      FieldName = 'T001_ID'
      Required = True
    end
    object odsListM050_ID: TFloatField
      FieldName = 'M050_ID'
      Required = True
    end
    object odsListT001_DATE_OP: TDateTimeField
      FieldName = 'T001_DATE_OP'
      Required = True
    end
    object odsListT001_OP_COUNT: TFloatField
      FieldName = 'T001_OP_COUNT'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsListT001_OP_SUM_CROSS: TFloatField
      FieldName = 'T001_OP_SUM_CROSS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM079_PROC_SUM: TFloatField
      FieldName = 'M079_PROC_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM079_TOTAL_SUM: TFloatField
      FieldName = 'M079_TOTAL_SUM'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM079_PROC_VALUE: TFloatField
      FieldName = 'M079_PROC_VALUE'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM079_CALC_TYPE: TIntegerField
      FieldName = 'M079_CALC_TYPE'
      Required = True
    end
    object odsListM030_ID: TFloatField
      FieldName = 'M030_ID'
      Required = True
    end
    object odsListM079_TAX_SUM: TFloatField
      FieldName = 'M079_TAX_SUM'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsListM050_TYPE: TIntegerField
      FieldName = 'M050_TYPE'
      Required = True
    end
    object odsListM050_TYPE_DESC: TStringField
      FieldName = 'M050_TYPE_DESC'
      Size = 11
    end
    object odsListOWNER_NAME: TStringField
      FieldName = 'OWNER_NAME'
      Required = True
      Size = 255
    end
  end
  inherited oqAdd: TOracleQuery
    Left = 216
    Top = 144
  end
  inherited oqUpdate: TOracleQuery
    Left = 256
    Top = 144
  end
  inherited oqDelete: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  -- выполняем процедуру'
      '  Pk_NResident.p_dividend_sum_delete(:T001_ID);'
      '--  commit;'
      'END;')
    Variables.Data = {
      0300000001000000080000003A543030315F4944040000000000000000000000}
    Left = 296
    Top = 144
  end
  inherited oqDupl: TOracleQuery
    Left = 336
    Top = 144
  end
  inherited pmFilter: TPopupMenu
    Left = 344
    Top = 80
  end
  object odsCount: TOracleDataSet
    SQL.Strings = (
      'SELECT COUNT(*) COUNT_STR,'
      '       NVL( SUM(T001_OP_COUNT), 0) COUNT_OPS,'
      '       NVL( SUM(T001_OP_SUM_CROSS), 0) SUM_OPS,'
      '       NVL( SUM(M079_PROC_SUM), 0) PROC_SUM_OPS,'
      
        '       DECODE( SUM(M079_TOTAL_SUM), 0, 0, NULL, 0, SUM(M079_PROC' +
        '_SUM) / SUM(M079_TOTAL_SUM) * 100) PROC_OPS,'
      '       NVL( SUM(M079_TOTAL_SUM), 0) TOTAL_SUM_OPS,'
      '       NVL( SUM(M079_TAX_SUM), 0) TAX_SUM_OPS,'
      '       COUNT( DECODE(M050_TYPE, 1, 1, NULL) ) COUNT_STR_PR,'
      
        '       NVL( SUM( DECODE( M050_TYPE, 1, T001_OP_COUNT, 0) ), 0) C' +
        'OUNT_OPS_PR,'
      
        '       NVL( SUM( DECODE( M050_TYPE, 1, T001_OP_SUM_CROSS, 0) ), ' +
        '0) SUM_OPS_PR,'
      
        '       NVL( SUM( DECODE( M050_TYPE, 1, M079_PROC_SUM, 0) ), 0) P' +
        'ROC_SUM_OPS_PR,'
      '       DECODE( SUM( DECODE(M050_TYPE, 1, M079_TOTAL_SUM, 0) ),'
      '               0, 0,'
      '               NULL, 0,'
      
        '               SUM( DECODE(M050_TYPE, 1, M079_PROC_SUM, 0) ) / S' +
        'UM( DECODE(M050_TYPE, 1, M079_TOTAL_SUM, 0) ) * 100 ) PROC_OPS_P' +
        'R, '
      
        '       NVL( SUM( DECODE( M050_TYPE, 1, M079_TOTAL_SUM, 0) ), 0) ' +
        'TOTAL_SUM_OPS_PR,'
      
        '       NVL( SUM( DECODE( M050_TYPE, 1, M079_TAX_SUM, 0) ), 0) TA' +
        'X_SUM_OPS_PR,'
      '       COUNT( DECODE(M050_TYPE, 2, 1, NULL) ) COUNT_STR_PORTF,'
      
        '       NVL( SUM( DECODE( M050_TYPE, 2, T001_OP_COUNT, 0) ), 0) C' +
        'OUNT_OPS_PORTF,'
      
        '       NVL( SUM( DECODE( M050_TYPE, 2, T001_OP_SUM_CROSS, 0) ), ' +
        '0) SUM_OPS_PORTF,'
      
        '       NVL( SUM( DECODE( M050_TYPE, 2, M079_PROC_SUM, 0) ), 0) P' +
        'ROC_SUM_OPS_PORTF,'
      '       DECODE( SUM( DECODE(M050_TYPE, 2, M079_TOTAL_SUM, 0) ),'
      '               0, 0,'
      '               NULL, 0,'
      
        '               SUM( DECODE(M050_TYPE, 2, M079_PROC_SUM, 0) ) / S' +
        'UM( DECODE(M050_TYPE, 2, M079_TOTAL_SUM, 0) ) * 100 ) PROC_OPS_P' +
        'ORTF, '
      
        '       NVL( SUM( DECODE( M050_TYPE, 2, M079_TOTAL_SUM, 0) ), 0) ' +
        'TOTAL_SUM_OPS_PORTF,'
      
        '       NVL( SUM( DECODE( M050_TYPE, 2, M079_TAX_SUM, 0) ), 0) TA' +
        'X_SUM_OPS_PORTF'
      'FROM ('
      'SELECT'
      ' T001_ID,'
      ' M050_ID,'
      ' M030_ID,'
      ' T001_DATE_OP,'
      ' T001_OP_COUNT,'
      ' T001_OP_SUM_CROSS,'
      ' M079_PROC_SUM,'
      ' M079_TOTAL_SUM,'
      ' M079_PROC_VALUE,'
      ' M079_CALC_TYPE,'
      ' M079_TAX_SUM,'
      ' M050_TYPE'
      'FROM V_NR_DIVIDENDS_SUM'
      'WHERE M050_ID = :M050_ID'
      ')')
    Variables.Data = {
      0300000001000000080000003A4D3035305F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001500000009000000434F554E545F5354520100000000000900000043
      4F554E545F4F50530100000000000700000053554D5F4F50530100000000000C
      00000050524F435F53554D5F4F50530100000000000800000050524F435F4F50
      530100000000000D000000544F54414C5F53554D5F4F50530100000000000B00
      00005441585F53554D5F4F50530100000000000C000000434F554E545F535452
      5F50520100000000000C000000434F554E545F4F50535F50520100000000000A
      00000053554D5F4F50535F50520100000000000F00000050524F435F53554D5F
      4F50535F50520100000000000B00000050524F435F4F50535F50520100000000
      0010000000544F54414C5F53554D5F4F50535F50520100000000000E00000054
      41585F53554D5F4F50535F50520100000000000F000000434F554E545F535452
      5F504F5254460100000000000F000000434F554E545F4F50535F504F52544601
      00000000000D00000053554D5F4F50535F504F52544601000000000012000000
      50524F435F53554D5F4F50535F504F52544601000000000013000000544F5441
      4C5F53554D5F4F50535F504F525446010000000000110000005441585F53554D
      5F4F50535F504F5254460100000000000E00000050524F435F4F50535F504F52
      5446010000000000}
    Cursor = crHourGlass
    MasterFields = 'M050_ID'
    ReadOnly = True
    Session = dmMain.OracleSession
    Left = 432
    Top = 148
    object odsCountCOUNT_STR: TFloatField
      FieldName = 'COUNT_STR'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountCOUNT_OPS: TFloatField
      FieldName = 'COUNT_OPS'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountSUM_OPS: TFloatField
      FieldName = 'SUM_OPS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_SUM_OPS: TFloatField
      FieldName = 'PROC_SUM_OPS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_OPS: TFloatField
      FieldName = 'PROC_OPS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountTOTAL_SUM_OPS: TFloatField
      FieldName = 'TOTAL_SUM_OPS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountTAX_SUM_OPS: TFloatField
      FieldName = 'TAX_SUM_OPS'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountCOUNT_STR_PR: TFloatField
      FieldName = 'COUNT_STR_PR'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountCOUNT_OPS_PR: TFloatField
      FieldName = 'COUNT_OPS_PR'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountSUM_OPS_PR: TFloatField
      FieldName = 'SUM_OPS_PR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_SUM_OPS_PR: TFloatField
      FieldName = 'PROC_SUM_OPS_PR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_OPS_PR: TFloatField
      FieldName = 'PROC_OPS_PR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountTOTAL_SUM_OPS_PR: TFloatField
      FieldName = 'TOTAL_SUM_OPS_PR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountTAX_SUM_OPS_PR: TFloatField
      FieldName = 'TAX_SUM_OPS_PR'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountCOUNT_STR_PORTF: TFloatField
      FieldName = 'COUNT_STR_PORTF'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountCOUNT_OPS_PORTF: TFloatField
      FieldName = 'COUNT_OPS_PORTF'
      DisplayFormat = '### ### ### ##0'
      EditFormat = '0'
    end
    object odsCountSUM_OPS_PORTF: TFloatField
      FieldName = 'SUM_OPS_PORTF'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_SUM_OPS_PORTF: TFloatField
      FieldName = 'PROC_SUM_OPS_PORTF'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountPROC_OPS_PORTF: TFloatField
      FieldName = 'PROC_OPS_PORTF'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountTOTAL_SUM_OPS_PORTF: TFloatField
      FieldName = 'TOTAL_SUM_OPS_PORTF'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
    object odsCountTAX_SUM_OPS_PORTF: TFloatField
      FieldName = 'TAX_SUM_OPS_PORTF'
      DisplayFormat = '### ### ### ##0.00'
      EditFormat = '0.00'
    end
  end
  object dsCount: TDataSource
    DataSet = odsCount
    Left = 472
    Top = 148
  end
end

inherited R01_DivCheck: TR01_DivCheck
  Width = 1098
  Height = 559
  inherited xxxDBGrid: TxxxDBGrid
    Top = 115
    Width = 1098
    Height = 423
    AdvSettings.Indexes = <
      item
        FieldName = 'M050_DATE'
        SortType = stDesc
      end>
    AdvSettings.HeadersLines = <
      item
        Headers = <>
      end
      item
        Headers = <
          item
            FirstCol = 0
            LastCol = 3
            Caption = 'Объявленно'
          end
          item
            FirstCol = 4
            LastCol = 7
            Caption = 'Остаток всего'
          end
          item
            FirstCol = 8
            LastCol = 11
            Caption = 'По прямым'
          end
          item
            FirstCol = 12
            LastCol = 15
            Caption = 'По портфельным'
          end>
      end
      item
        Headers = <
          item
            FirstCol = 4
            LastCol = 5
            Caption = 'Кол-во ц.б.'
          end
          item
            FirstCol = 6
            LastCol = 7
            Caption = 'Сумма'
          end
          item
            FirstCol = 8
            LastCol = 9
            Caption = 'Кол-во ц.б.'
          end
          item
            FirstCol = 10
            LastCol = 11
            Caption = 'Сумма'
          end
          item
            FirstCol = 12
            LastCol = 13
            Caption = 'Кол-во ц.б.'
          end
          item
            FirstCol = 14
            LastCol = 15
            Caption = 'Сумма'
          end>
      end>
    Columns = <
      item
        Expanded = False
        FieldName = 'M050_DATE'
        PickList.Strings = ()
        Title.Caption = 'Дата'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'M050_SUM'
        PickList.Strings = ()
        Title.Caption = 'За 1 акц. р.'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIV_CNT_ALL'
        PickList.Strings = ()
        Title.Caption = 'Кол-во млн. шт.'
        Width = 55
        Visible = True
      end
      item
        Color = 10092543
        Expanded = False
        FieldName = 'DIV_SUM_ALL'
        PickList.Strings = ()
        Title.Caption = 'Сумма млн. $'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OUT_CNT_PRC_ALL'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = '%'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OUT_CNT_ALL'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'млн. шт.'
        Width = 55
        Visible = True
      end
      item
        Color = 10092543
        Expanded = False
        FieldName = 'OUT_SUM_PRC_ALL'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = '%'
        Width = 55
        Visible = True
      end
      item
        Color = 10092543
        Expanded = False
        FieldName = 'OUT_SUM_ALL'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'млн. $'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OUT_CNT_PRC_PR'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = '%'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OUT_CNT_PR'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'млн. шт.'
        Width = 55
        Visible = True
      end
      item
        Color = 10092543
        Expanded = False
        FieldName = 'OUT_SUM_PRC_PR'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = '%'
        Width = 55
        Visible = True
      end
      item
        Color = 10092543
        Expanded = False
        FieldName = 'OUT_SUM_PR'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'млн. $'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OUT_CNT_PRC_PF'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = '%'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OUT_CNT_PF'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'млн. шт.'
        Width = 55
        Visible = True
      end
      item
        Color = 10092543
        Expanded = False
        FieldName = 'OUT_SUM_PRC_PF'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = '%'
        Width = 55
        Visible = True
      end
      item
        Color = 10092543
        Expanded = False
        FieldName = 'OUT_SUM_PF'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'млн. $'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIV_IS_CLOSED'
        PickList.Strings = ()
        Title.Alignment = taCenter
        Title.Caption = 'Скрывать выплаченные'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DIV_IS_CLOSED_DESC'
        PickList.Strings = ()
        Title.Caption = 'Статус'
        Width = 85
        Visible = True
      end>
  end
  inherited paToolButton: TPanel
    Width = 1098
    inherited tlbList: TToolBar
      inherited tbSeparator02: TToolButton
        Enabled = False
        Visible = False
      end
    end
  end
  object paHideClosed: TPanel [2]
    Left = 0
    Top = 538
    Width = 1098
    Height = 21
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    inline fmCheckBox1: TfmCheckBox
      Width = 160
      Align = alLeft
      inherited lbCaption: TLabel
        Left = 23
        Width = 122
        Caption = 'Скрывать выплаченные'
      end
      inherited cb: TCheckBox
        Left = 5
      end
    end
  end
  object GroupBox1: TGroupBox [3]
    Left = 0
    Top = 25
    Width = 1098
    Height = 90
    Align = alTop
    Caption = ' Оценка исходящего остатка по объявлению %s'
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 38
      Width = 55
      Height = 13
      Caption = 'Кол-во ц.б.'
    end
    object Label3: TLabel
      Left = 8
      Top = 64
      Width = 34
      Height = 13
      Caption = 'Сумма'
    end
    object Label4: TLabel
      Left = 74
      Top = 20
      Width = 58
      Height = 13
      Caption = 'Вх. остаток'
    end
    object Label1: TLabel
      Left = 143
      Top = 20
      Width = 58
      Height = 13
      Caption = 'Форма 405'
    end
    object Label5: TLabel
      Left = 213
      Top = 20
      Width = 65
      Height = 13
      Caption = 'Исх. остаток'
    end
    object DBEdit2: TDBEdit
      Left = 74
      Top = 61
      Width = 65
      Height = 21
      Hint = 'млн.$'
      Color = clBtnFace
      DataField = 'OUT_SUM_ALL'
      DataSource = dsList
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 74
      Top = 36
      Width = 65
      Height = 21
      Hint = 'млн.шт.'
      Color = clBtnFace
      DataField = 'OUT_CNT_ALL'
      DataSource = dsList
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 143
      Top = 36
      Width = 65
      Height = 21
      Hint = 'млн.шт.'
      Color = clBtnFace
      DataField = 'COUNT405'
      DataSource = dsCalcDelta
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 143
      Top = 61
      Width = 65
      Height = 21
      Hint = 'млн.$'
      Color = clBtnFace
      DataField = 'SUM405'
      DataSource = dsCalcDelta
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 212
      Top = 61
      Width = 65
      Height = 21
      Hint = 'млн.$'
      Color = clBtnFace
      DataField = 'SUMDELTA'
      DataSource = dsCalcDelta
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 212
      Top = 36
      Width = 65
      Height = 21
      Hint = 'млн.шт.'
      Color = clBtnFace
      DataField = 'COUNTDELTA'
      DataSource = dsCalcDelta
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 5
    end
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT M050_ID,'
      '       T028_ID,'
      '       T027_ID,'
      '       M050_DATE,'
      '       M050_SUM,'
      '       T055_ID,'
      '       DIV_SUM_ALL,'
      '       DIV_CNT_ALL,'
      '       OUT_CNT_PRC_ALL,'
      '       OUT_CNT_ALL,'
      '       OUT_SUM_PRC_ALL,'
      '       OUT_SUM_ALL,'
      '       OUT_CNT_PRC_PR,'
      '       OUT_CNT_PR,'
      '       OUT_SUM_PRC_PR,'
      '       OUT_SUM_PR,'
      '       OUT_CNT_PRC_PF,'
      '       OUT_CNT_PF,'
      '       OUT_SUM_PRC_PF,'
      '       OUT_SUM_PF,'
      '   DIV_IS_CLOSED,'
      'DIV_IS_CLOSED_DESC'
      'FROM   V_NR_LINK_DIV_REMAINS V1'
      'WHERE  V1.T028_ID = :T028_ID'
      'AND    V1.T027_ID = :T027_ID'
      'AND    V1.T055_ID = :T055_ID'
      ' '
      ' ')
    Variables.Data = {
      0300000003000000080000003A543032385F4944040000000000000000000000
      080000003A543032375F4944040000000000000000000000080000003A543035
      355F4944040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000016000000070000004D3035305F4944010000000000090000004D3035
      305F44415445010000000000080000004D3035305F53554D0100000000000700
      0000543035355F49440100000000000F0000004F55545F434E545F5052435F41
      4C4C0100000000000B0000004F55545F434E545F414C4C0100000000000F0000
      004F55545F53554D5F5052435F414C4C0100000000000B0000004F55545F5355
      4D5F414C4C0100000000000E0000004F55545F434E545F5052435F5052010000
      0000000A0000004F55545F434E545F50520100000000000E0000004F55545F53
      554D5F5052435F50520100000000000A0000004F55545F53554D5F5052010000
      0000000E0000004F55545F434E545F5052435F50460100000000000A0000004F
      55545F434E545F50460100000000000E0000004F55545F53554D5F5052435F50
      460100000000000A0000004F55545F53554D5F50460100000000000700000054
      3032385F494401000000000007000000543032375F49440100000000000B0000
      004449565F434E545F414C4C0100000000000B0000004449565F53554D5F414C
      4C0100000000000D0000004449565F49535F434C4F5345440100000000001200
      00004449565F49535F434C4F5345445F44455343010000000000}
    AfterScroll = odsListAfterScroll
    object odsListM050_ID: TFloatField
      FieldName = 'M050_ID'
    end
    object odsListM050_DATE: TDateTimeField
      FieldName = 'M050_DATE'
    end
    object odsListM050_SUM: TFloatField
      FieldName = 'M050_SUM'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT055_ID: TFloatField
      FieldName = 'T055_ID'
    end
    object odsListOUT_CNT_PRC_ALL: TFloatField
      FieldName = 'OUT_CNT_PRC_ALL'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOUT_CNT_ALL: TFloatField
      FieldName = 'OUT_CNT_ALL'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListOUT_SUM_PRC_ALL: TFloatField
      FieldName = 'OUT_SUM_PRC_ALL'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOUT_SUM_ALL: TFloatField
      FieldName = 'OUT_SUM_ALL'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListOUT_CNT_PRC_PR: TFloatField
      FieldName = 'OUT_CNT_PRC_PR'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOUT_CNT_PR: TFloatField
      FieldName = 'OUT_CNT_PR'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListOUT_SUM_PRC_PR: TFloatField
      FieldName = 'OUT_SUM_PRC_PR'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOUT_SUM_PR: TFloatField
      FieldName = 'OUT_SUM_PR'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListOUT_CNT_PRC_PF: TFloatField
      FieldName = 'OUT_CNT_PRC_PF'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOUT_CNT_PF: TFloatField
      FieldName = 'OUT_CNT_PF'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListOUT_SUM_PRC_PF: TFloatField
      FieldName = 'OUT_SUM_PRC_PF'
      DisplayFormat = '### ### ### ##0'
    end
    object odsListOUT_SUM_PF: TFloatField
      FieldName = 'OUT_SUM_PF'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListDIV_SUM_ALL: TFloatField
      FieldName = 'DIV_SUM_ALL'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListDIV_CNT_ALL: TFloatField
      FieldName = 'DIV_CNT_ALL'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListDIV_IS_CLOSED: TStringField
      FieldName = 'DIV_IS_CLOSED'
      Size = 1
    end
    object odsListDIV_IS_CLOSED_DESC: TStringField
      FieldName = 'DIV_IS_CLOSED_DESC'
      Size = 7
    end
  end
  object odsCalcDelta: TOracleDataSet
    SQL.Strings = (
      'SELECT 1111111111.67 Count405,'
      '       1111111111.67 Sum405,'
      '       1111111111.67 CountDelta,'
      '       1111111111.67 SumDelta,'
      '       sysdate DateDiv'
      'FROM   DUAL'
      'WHERE  1 = 0'
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000700000008000000434F554E54343035010000000000060000005355
      4D34303501000000000008000000434F554E5444495601000000000006000000
      53554D44495601000000000007000000444154454449560100000000000A0000
      00434F554E5444454C54410100000000000800000053554D44454C5441010000
      000000}
    OnApplyRecord = odsCalcDeltaApplyRecord
    Session = dmMain.OracleSession
    Left = 200
    Top = 256
    object odsCalcDeltaCOUNT405: TFloatField
      FieldName = 'COUNT405'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsCalcDeltaSUM405: TFloatField
      FieldName = 'SUM405'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsCalcDeltaCOUNTDELTA: TFloatField
      FieldName = 'COUNTDELTA'
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsCalcDeltaSUMDELTA: TFloatField
      FieldName = 'SUMDELTA'
      DisplayFormat = '### ### ### ##0.00'
    end
  end
  object dsCalcDelta: TDataSource
    DataSet = odsCalcDelta
    Left = 240
    Top = 256
  end
  object oqCalc: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_NR_CALC_REMAINS.p_calc_all;'
      'END;'
      ''
      '')
    Session = dmMain.OracleSession
    Left = 192
    Top = 336
  end
end

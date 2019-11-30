inherited frm102_BON1List: Tfrm102_BON1List
  Left = 64
  Top = 189
  Caption = 'Котировки Reuters'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 381
  end
  inherited spRight: TSplitter
    Left = 0
    Top = 57
    Height = 324
    Align = alLeft
  end
  inherited paRight: TPanel
    Left = 0
    Width = 883
    Height = 39
    Align = alTop
    Caption = ''
    inline fm03_DateFrom: Tfm03_Date
      Left = 20
      Top = 2
      Width = 252
      inherited Label1: TLabel
        Width = 53
        Caption = 'Период   с'
      end
      inherited dt01: TDateTimePicker
        Left = 64
        Width = 169
        DateFormat = dfLong
      end
    end
    inline fm03_DateUpto: Tfm03_Date
      Left = 258
      Top = 2
      Width = 193
      TabOrder = 1
      inherited Label1: TLabel
        Width = 12
        Caption = 'по'
      end
      inherited dt01: TDateTimePicker
        Left = 24
        Width = 169
        DateFormat = dfLong
      end
    end
    inline fm04_LookUp1: Tfm04_LookUp
      Left = 541
      Top = 2
      Width = 201
      TabOrder = 2
      inherited Label1: TLabel
        Width = 21
        Caption = 'ISIN'
      end
      inherited Lookup01: TxxxDBLookupCheckCombo
        Left = 32
        Width = 169
        LookupField = 'T116_ID'
        LookupDisplay = 'T116_ISIN'
      end
      inherited odsList: TOracleDataSet
        SQL.Strings = (
          'select T116_ID, T116_ISIN'
          'from T116_BON1_ISINS'
          'order by T116_ISIN')
        QBEDefinition.QBEFieldDefs = {
          040000000200000009000000543131365F4953494E0100000000000700000054
          3131365F4944010000000000}
        Left = 96
      end
      inherited dsList: TDataSource
        Left = 128
      end
    end
    object CheckBox1: TCheckBox
      Left = 525
      Top = 8
      Width = 10
      Height = 17
      TabOrder = 3
      OnClick = CheckBox1Click
    end
    object cbPeriod: TCheckBox
      Left = 8
      Top = 8
      Width = 10
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = cbPeriodClick
    end
  end
  inherited paMain: TPanel
    Left = 3
    Top = 57
    Height = 324
    inherited ToolBar2: TToolBar
      inherited ToolButton7: TToolButton
        Caption = 'Загрузка'
      end
      inherited ToolButton9: TToolButton
        Left = 679
      end
      inherited ToolButton10: TToolButton
        Left = 687
        Enabled = False
        Visible = False
      end
      object tbRecalc: TToolButton
        Left = 794
        Top = 0
        Caption = 'Пересчитать'
        Enabled = False
        ImageIndex = 28
        Visible = False
        OnClick = tbRecalcClick
      end
    end
    inherited xxxDBGrid: TxxxDBGrid
      Height = 259
      AdvSettings.Indexes = <
        item
          FieldName = 'T115_DATE'
          SortType = stDesc
        end>
      Columns = <
        item
          Expanded = False
          FieldName = 'T115_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T116_ISIN'
          PickList.Strings = ()
          Title.Caption = 'ISIN'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T115_RIC'
          PickList.Strings = ()
          Title.Caption = 'RIC'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T115_CLOSE'
          PickList.Strings = ()
          Title.Caption = 'CLOSE'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T115_LOAD_DATE'
          PickList.Strings = ()
          Title.Caption = 'Дата загрузки'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T115_COMMENT'
          PickList.Strings = ()
          Title.Caption = 'Примечание'
          Width = 260
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T116_ID'
          PickList.Strings = ()
          Visible = False
        end>
    end
  end
  inherited Panel2: TPanel
    inherited Label1: TLabel
      Width = 94
      Caption = 'Котировки Reuters'
    end
  end
  inherited Panel1: TPanel
    Top = 384
    Height = 100
    inherited pc01: TPageControl
      Height = 98
      inherited ts01: TTabSheet
        inherited ToolBar3: TToolBar
          inherited tbViewFile: TToolButton
            Enabled = False
            Visible = False
          end
        end
        inherited ListView: TListView
          Height = 47
          Columns = <
            item
              Caption = 'Файл'
              Width = 600
            end
            item
              Caption = 'Результат загрузки'
              Width = 350
            end>
          ColumnClick = False
        end
      end
    end
  end
  inherited pnlButtons: TPanel
    TabOrder = 2
  end
  inherited odsList: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      ' T115_ID,'
      ' T115_DATE,'
      ' T116_ID,'
      ' T116_ISIN,'
      ' T115_RIC,'
      ' T115_CLOSE,'
      ' T115_LOAD_DATE,'
      ' T115_COMMENT'
      'FROM V_405_REUTERS_RATES'
      ''
      ' '
      ' '
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000000800000007000000543131355F494401000000000009000000543131
      355F4441544501000000000008000000543131355F5249430100000000000A00
      0000543131355F434C4F53450100000000000E000000543131355F4C4F41445F
      444154450100000000000C000000543131355F434F4D4D454E54010000000000
      07000000543131365F494401000000000009000000543131365F4953494E0100
      00000000}
    object odsListT115_ID: TFloatField
      FieldName = 'T115_ID'
      Required = True
    end
    object odsListT115_DATE: TDateTimeField
      FieldName = 'T115_DATE'
      Required = True
    end
    object odsListT116_ID: TFloatField
      FieldName = 'T116_ID'
      Required = True
    end
    object odsListT116_ISIN: TStringField
      FieldName = 'T116_ISIN'
      Required = True
      Size = 16
    end
    object odsListT115_RIC: TStringField
      FieldName = 'T115_RIC'
      Size = 32
    end
    object odsListT115_CLOSE: TFloatField
      FieldName = 'T115_CLOSE'
      Required = True
      DisplayFormat = '### ### ### ##0.00'
    end
    object odsListT115_LOAD_DATE: TDateTimeField
      FieldName = 'T115_LOAD_DATE'
      Required = True
    end
    object odsListT115_COMMENT: TStringField
      FieldName = 'T115_COMMENT'
      Size = 255
    end
  end
  inherited pkList: TOraclePackage
    PackageName = 'Pk_Form_405'
  end
  inherited oqUpdate: TOracleQuery
    SQL.Strings = (
      ''
      ''
      ' ')
  end
  inherited OpenDialog: TOpenDialog
    Left = 43
    Top = 108
  end
end

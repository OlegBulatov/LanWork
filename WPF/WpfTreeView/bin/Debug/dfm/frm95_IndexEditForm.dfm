inherited frm95_IndexEdit: Tfrm95_IndexEdit
  ClientHeight = 163
  ClientWidth = 415
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 76
    Height = 13
    Caption = 'Наименование'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 28
    Width = 50
    Height = 13
    Caption = 'Описание'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 108
    Width = 64
    Height = 13
    Caption = 'Применение'
  end
  inherited Panel2: TPanel
    Top = 130
    Width = 415
    inherited Panel3: TPanel
      Left = 250
    end
  end
  object ed01: TDBEdit [4]
    Left = 98
    Top = 4
    Width = 311
    Height = 21
    DataField = 'M023_NAME'
    DataSource = frm95_IndexList.dsList
    TabOrder = 1
  end
  object m01: TDBMemo [5]
    Left = 98
    Top = 28
    Width = 311
    Height = 73
    DataField = 'M023_DESCR'
    DataSource = frm95_IndexList.dsList
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox [6]
    Left = 98
    Top = 104
    Width = 311
    Height = 21
    DataField = 'M023_USAGE'
    DataSource = frm95_IndexList.dsList
    KeyField = 'FLAG'
    ListField = 'FL_DESCR'
    ListSource = ds01
    TabOrder = 3
  end
  inherited ActionList: TActionList
    Left = 272
    Top = 56
  end
  object ods01: TOracleDataSet
    SQL.Strings = (
      'select '#39'D'#39' as flag, '#39'Прямое использование'#39' as fl_descr'
      'from dual'
      'union'
      'select '#39'C'#39' as flag, '#39'Использование в формулах'#39' as fl_descr'
      'from dual')
    QBEDefinition.QBEFieldDefs = {
      040000000200000004000000464C414701000000000008000000464C5F444553
      4352010000000000}
    Session = dmMain.OracleSession
    Left = 144
    Top = 88
    object ods01FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object ods01FL_DESCR: TStringField
      FieldName = 'FL_DESCR'
      Size = 24
    end
  end
  object ds01: TDataSource
    DataSet = ods01
    Left = 192
    Top = 88
  end
end

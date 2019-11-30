inherited G004_RETWORK: TG004_RETWORK
  Width = 430
  Height = 443
  object lbPerid: TLabel [0]
    Left = 120
    Top = 56
    Width = 29
    Height = 13
    Alignment = taCenter
    Caption = 'DATE'
    Visible = False
  end
  object Label3: TLabel [1]
    Left = 0
    Top = 16
    Width = 47
    Height = 20
    Alignment = taCenter
    Caption = 'Per.№:'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [2]
    Left = 240
    Top = 16
    Width = 63
    Height = 20
    Alignment = taCenter
    Caption = 'Период:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox [3]
    Left = 8
    Top = 218
    Width = 417
    Height = 128
    Caption = 'Котировки'
    TabOrder = 12
    object Label2: TLabel
      Left = 35
      Top = 38
      Width = 54
      Height = 13
      Caption = 'Котировка'
    end
    object btReCalcRet: TButton
      Left = 101
      Top = 55
      Width = 31
      Height = 17
      Caption = 'XXX'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btReCalcRetClick
    end
  end
  object GroupBox2: TGroupBox [4]
    Left = 8
    Top = 49
    Width = 417
    Height = 137
    Caption = 'Номинал'
    TabOrder = 7
    object Label1: TLabel
      Left = 27
      Top = 46
      Width = 46
      Height = 13
      Caption = 'Номинал'
    end
    object btReCalcNom: TButton
      Left = 115
      Top = 64
      Width = 35
      Height = 19
      Caption = 'XXX'
      TabOrder = 0
      OnClick = btReCalcNomClick
    end
  end
  inline CurNom: Tg004_currLook [5]
    Left = 13
    Top = 64
    Width = 363
    Height = 24
    inherited lbCaption: TLabel
      Left = 20
      Width = 38
      Caption = 'Валюта'
    end
    inherited lcb: TxxxDBLookupCheckCombo
      Top = 3
      Width = 136
    end
    inherited cb: TCheckBox
      Checked = True
      State = cbChecked
    end
    inherited dsList: TDataSource
      Left = 264
    end
    inherited odsList: TOracleDataSet
      Left = 232
    end
  end
  object BtCalcRet: TButton
    Left = 178
    Top = 279
    Width = 35
    Height = 18
    Caption = 'USD'
    TabOrder = 1
    OnClick = BtCalcRetClick
  end
  object BtCalcNom: TButton
    Left = 184
    Top = 113
    Width = 31
    Height = 19
    Caption = 'USD'
    TabOrder = 2
    OnClick = BtCalcNomClick
  end
  object edNomOrig: TDBEdit
    Left = 96
    Top = 90
    Width = 137
    Height = 21
    TabOrder = 3
  end
  object edNomUsd: TDBEdit
    Left = 96
    Top = 135
    Width = 137
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object edRetOrig: TDBEdit
    Left = 96
    Top = 256
    Width = 137
    Height = 21
    TabOrder = 5
  end
  object edRetUsd: TDBEdit
    Left = 96
    Top = 301
    Width = 137
    Height = 21
    TabOrder = 6
  end
  object edPeriod: TDBEdit
    Left = 328
    Top = 9
    Width = 97
    Height = 29
    BorderStyle = bsNone
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object edISIN: TDBEdit
    Left = 56
    Top = 8
    Width = 193
    Height = 32
    BorderStyle = bsNone
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object cbNom: TDBCheckBox
    Left = 32
    Top = 160
    Width = 161
    Height = 17
    Caption = 'Фиксировать изменения'
    TabOrder = 10
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object cbRET: TDBCheckBox
    Left = 40
    Top = 327
    Width = 153
    Height = 17
    Caption = 'Фиксировать изменения'
    TabOrder = 11
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  inline CurRet: Tg004_currLook
    Left = 13
    Top = 232
    Width = 254
    Height = 23
    TabOrder = 13
    inherited actList: TActionList
      Left = 240
    end
  end
  inherited actList: TActionList
    Left = 200
    Top = 16
  end
  object oqUsdCalcNom: TOracleQuery
    SQL.Strings = (
      'begin'
      
        ':sumusd := pk_404_utilits.f_get_usd_nominal(:curr,:period,:currs' +
        'um);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000070000003A53554D55534404000000000000000000000005
      0000003A43555252050000000000000000000000070000003A504552494F4404
      0000000000000000000000080000003A4355525253554D040000000000000000
      000000}
    Left = 360
    Top = 64
  end
  object oqUsdCalcRet: TOracleQuery
    SQL.Strings = (
      'begin'
      
        ':sumusd := pk_404_utilits.f_get_usd_nominal(:curr,:period,:currs' +
        'um);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000070000003A53554D55534404000000000000000000000005
      0000003A43555252050000000000000000000000070000003A504552494F4404
      0000000000000000000000080000003A4355525253554D040000000000000000
      000000}
    Left = 360
    Top = 217
  end
  object oqOrigCalcRet: TOracleQuery
    SQL.Strings = (
      'begin'
      
        ':sumusd := pk_404_utilits.f_get_original(:curr,:period,:currsum)' +
        ';'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000070000003A53554D55534404000000000000000000000005
      0000003A43555252050000000000000000000000070000003A504552494F4404
      0000000000000000000000080000003A4355525253554D040000000000000000
      000000}
    Left = 344
    Top = 276
  end
  object oqOrigCalcNom: TOracleQuery
    SQL.Strings = (
      'begin'
      
        ':sumusd := pk_404_utilits.f_get_original(:curr,:period,:currsum)' +
        ';'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      0300000004000000070000003A53554D55534405000000000000000000000005
      0000003A43555252050000000000000000000000070000003A504552494F4404
      0000000000000000000000080000003A4355525253554D040000000000000000
      000000}
    Left = 376
    Top = 112
  end
end

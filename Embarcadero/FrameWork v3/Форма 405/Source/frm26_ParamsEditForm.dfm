inherited frm26_ParamsEdit: Tfrm26_ParamsEdit
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
  ClientHeight = 255
  ClientWidth = 327
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 333
  ExplicitHeight = 283
  PixelsPerInch = 96
  TextHeight = 13
  object gb1: TGroupBox [0]
    Left = 6
    Top = 95
    Width = 313
    Height = 121
    Caption = 'Bloomberg'
    TabOrder = 4
    object Label1: TLabel
      Left = 63
      Top = 12
      Width = 43
      Height = 13
      Caption = 'IP '#1072#1076#1088#1077#1089
    end
    object Label2: TLabel
      Left = 63
      Top = 42
      Width = 25
      Height = 13
      Caption = #1055#1086#1088#1090
    end
    object Label3: TLabel
      Left = 63
      Top = 68
      Width = 24
      Height = 13
      Caption = #1061#1086#1089#1090
    end
    object Label4: TLabel
      Left = 63
      Top = 95
      Width = 36
      Height = 17
      Caption = #1056#1077#1089#1091#1088#1089
    end
    object Edit1: TEdit
      Left = 120
      Top = 12
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = 'Edit1'
      Visible = False
    end
    object edPort: TEdit
      Left = 120
      Top = 39
      Width = 119
      Height = 21
      TabOrder = 1
    end
  end
  inherited Panel2: TPanel
    Top = 222
    Width = 327
    ExplicitTop = 158
    ExplicitWidth = 327
    inherited Panel3: TPanel
      Left = 162
      ExplicitLeft = 162
    end
  end
  object rg01: TRadioGroup [2]
    Left = 8
    Top = 8
    Width = 313
    Height = 81
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1074#1088#1077#1084#1077#1085#1080' '#1087#1088#1086#1089#1084#1086#1090#1088#1072' '#1076#1072#1085#1085#1099#1093': '
    ItemIndex = 0
    Items.Strings = (
      #1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1076#1072#1090#1091
      #1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' -')
    TabOrder = 1
  end
  object dt01: TDateTimePicker [3]
    Left = 120
    Top = 57
    Width = 89
    Height = 21
    Date = 38378.000000000000000000
    Time = 0.614245613396633400
    TabOrder = 2
  end
  object dt02: TDateTimePicker [4]
    Left = 232
    Top = 57
    Width = 73
    Height = 21
    Date = 38378.000000000000000000
    Time = 0.614245613396633400
    Kind = dtkTime
    TabOrder = 3
  end
  object edHost: TEdit [5]
    Left = 126
    Top = 159
    Width = 119
    Height = 21
    TabOrder = 5
  end
  object edResource: TEdit [6]
    Left = 126
    Top = 186
    Width = 119
    Height = 21
    TabOrder = 6
  end
  inherited ActionList1: TActionList
    Left = 24
    Top = 16
  end
  object oqGet: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_name H003_SETTINGS.H003_NAME%TYPE;'
      '  v_value H003_SETTINGS.H003_VALUE%TYPE;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_name := :H003_NAME;'
      '  v_value := Pk_Form_405.f_get_setting(v_name);'
      '  IF v_name = '#39'USER_CURR_DATE'#39' THEN'
      '    :H003_DT_VALUE := to_date(v_value, '#39'DDMMYYYYHH24MISS'#39');'
      '  ELSE'
      '    :H003_VALUE := v_value;'
      '  END IF;'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000003000000140000003A0048003000300033005F004E0041004D004500
      050000000000000000000000160000003A0048003000300033005F0056004100
      4C00550045000500000000000000000000001C0000003A004800300030003300
      5F00440054005F00560041004C00550045000C0000000000000000000000}
    Left = 221
    Top = 18
  end
  object oqSet: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_name H003_SETTINGS.H003_NAME%TYPE;'
      '  v_value H003_SETTINGS.H003_VALUE%TYPE;'
      'BEGIN'
      '  -- '#1074#1099#1087#1086#1083#1085#1103#1077#1084' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      '  v_name := :H003_NAME;'
      '  v_value := :H003_VALUE;'
      '  Pk_Form_405.p_set_setting(v_name, v_value);'
      'END;'
      '')
    Session = dmMain.OracleSession
    Optimize = False
    Variables.Data = {
      0400000002000000140000003A0048003000300033005F004E0041004D004500
      050000000000000000000000160000003A0048003000300033005F0056004100
      4C0055004500050000000000000000000000}
    Left = 257
    Top = 18
  end
end

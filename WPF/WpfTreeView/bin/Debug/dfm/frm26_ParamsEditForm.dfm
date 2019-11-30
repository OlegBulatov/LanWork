inherited frm26_ParamsEdit: Tfrm26_ParamsEdit
  Caption = 'Параметры'
  ClientHeight = 191
  ClientWidth = 327
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 158
    Width = 327
    inherited Panel3: TPanel
      Left = 162
    end
  end
  object rg01: TRadioGroup [1]
    Left = 8
    Top = 8
    Width = 313
    Height = 81
    Caption = 'Настройка времени просмотра данных: '
    ItemIndex = 0
    Items.Strings = (
      'использовать текущую дату'
      'использовать -')
    TabOrder = 1
  end
  object dt01: TDateTimePicker [2]
    Left = 120
    Top = 57
    Width = 89
    Height = 21
    CalAlignment = dtaLeft
    Date = 38378.6142456134
    Time = 38378.6142456134
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 2
  end
  object dt02: TDateTimePicker [3]
    Left = 232
    Top = 57
    Width = 73
    Height = 21
    CalAlignment = dtaLeft
    Date = 38378.6142456134
    Time = 38378.6142456134
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkTime
    ParseInput = False
    TabOrder = 3
  end
  object gb1: TGroupBox [4]
    Left = 8
    Top = 91
    Width = 313
    Height = 64
    Caption = 'Bloomberg'
    TabOrder = 4
    object Label1: TLabel
      Left = 62
      Top = 16
      Width = 43
      Height = 13
      Caption = 'IP адрес'
    end
    object Label2: TLabel
      Left = 62
      Top = 38
      Width = 25
      Height = 13
      Caption = 'Порт'
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
      Left = 121
      Top = 35
      Width = 119
      Height = 21
      TabOrder = 1
      Text = 'edPort'
    end
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
      '  -- выполняем процедуру'
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
    Variables.Data = {
      03000000030000000A0000003A483030335F4E414D4505000000000000000000
      00000B0000003A483030335F56414C55450500000000000000000000000E0000
      003A483030335F44545F56414C55450C0000000000000000000000}
    Left = 221
    Top = 18
  end
  object oqSet: TOracleQuery
    SQL.Strings = (
      'DECLARE'
      '  v_name H003_SETTINGS.H003_NAME%TYPE;'
      '  v_value H003_SETTINGS.H003_VALUE%TYPE;'
      'BEGIN'
      '  -- выполняем процедуру'
      '  v_name := :H003_NAME;'
      '  v_value := :H003_VALUE;'
      '  Pk_Form_405.p_set_setting(v_name, v_value);'
      'END;'
      '')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000A0000003A483030335F4E414D4505000000000000000000
      00000B0000003A483030335F56414C5545050000000000000000000000}
    Left = 257
    Top = 18
  end
end

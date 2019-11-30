inherited G004_RETWORK: TG004_RETWORK
  Width = 338
  Height = 323
  object Label3: TLabel [0]
    Left = 6
    Top = 6
    Width = 46
    Height = 13
    Alignment = taCenter
    Caption = 'Per.№:'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label4: TLabel [1]
    Left = 187
    Top = 7
    Width = 55
    Height = 13
    Alignment = taCenter
    Caption = 'Период:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label1: TLabel [2]
    Left = 35
    Top = 72
    Width = 46
    Height = 13
    Caption = 'Номинал'
  end
  object GroupBox1: TGroupBox [3]
    Left = 8
    Top = 174
    Width = 313
    Height = 140
    Caption = 'Котировки'
    TabOrder = 9
  end
  object GroupBox2: TGroupBox [4]
    Left = 9
    Top = 26
    Width = 312
    Height = 145
    Caption = 'Номинал'
    TabOrder = 4
  end
  object edNomOrig: TDBEdit [5]
    Left = 104
    Top = 68
    Width = 153
    Height = 21
    TabOrder = 0
    OnKeyUp = edNomOrigKeyUp
  end
  object edNomUsd: TDBEdit [6]
    Left = 104
    Top = 113
    Width = 149
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyUp = edNomUsdKeyUp
  end
  object edRetOrig: TDBEdit [7]
    Left = 106
    Top = 211
    Width = 137
    Height = 21
    TabOrder = 2
    OnKeyUp = edRetOrigKeyUp
  end
  object edRetUsd: TDBEdit [8]
    Left = 105
    Top = 256
    Width = 137
    Height = 21
    TabOrder = 3
    OnKeyPress = edRetUsdKeyPress
  end
  object edPeriod: TDBEdit [9]
    Left = 264
    Top = 4
    Width = 57
    Height = 29
    BorderStyle = bsNone
    Color = clBtnFace
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object edISIN: TDBEdit [10]
    Left = 56
    Top = 3
    Width = 127
    Height = 32
    BorderStyle = bsNone
    Color = clBtnFace
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object cbNom: TDBCheckBox [11]
    Left = 32
    Top = 138
    Width = 161
    Height = 17
    Caption = 'Фиксировать изменения'
    TabOrder = 7
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object cbRET: TDBCheckBox [12]
    Left = 40
    Top = 279
    Width = 153
    Height = 17
    Caption = 'Фиксировать изменения'
    TabOrder = 8
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  inline CurRet: Tg004_currLook [13]
    Left = 23
    Top = 186
    Width = 286
    Height = 24
    TabOrder = 10
    inherited lcb: TxxxDBLookupCheckCombo
      Top = 1
      Width = 200
      OnChange = CurRetlcbChange
    end
    inherited actList: TActionList
      Left = 248
      Top = 12
    end
    inherited odsList: TOracleDataSet
      Top = 2
    end
  end
  object ToolBarRet: TToolBar
    Left = 125
    Top = 230
    Width = 115
    Height = 24
    Align = alNone
    Anchors = []
    ButtonWidth = 50
    Caption = 'ToolBarRet'
    EdgeBorders = []
    Images = dmPicters.ilCommonPictures
    List = True
    ShowCaptions = True
    TabOrder = 11
    object btReCalcRet: TToolButton
      Left = 0
      Top = 2
      Caption = 'XXX'
      ImageIndex = 17
      OnClick = btReCalcRetClick
    end
    object BtCalcRet: TToolButton
      Left = 50
      Top = 2
      AutoSize = True
      Caption = 'USD'
      ImageIndex = 14
      OnClick = BtCalcRetClick
    end
  end
  object ToolBarNom: TToolBar
    Left = 128
    Top = 88
    Width = 124
    Height = 24
    Align = alNone
    Anchors = []
    ButtonWidth = 50
    Caption = 'ToolBarNom'
    EdgeBorders = []
    Images = dmPicters.ilCommonPictures
    List = True
    ShowCaptions = True
    TabOrder = 12
    object btReCalcNom: TToolButton
      Left = 0
      Top = 2
      Caption = 'XXX'
      ImageIndex = 17
      OnClick = btReCalcNomClick
    end
    object BtCalcNom: TToolButton
      Left = 50
      Top = 2
      Caption = 'USD'
      ImageIndex = 14
      OnClick = BtCalcNomClick
    end
  end
  inline CurNom: Tg004_currLook
    Left = 21
    Top = 39
    Width = 293
    Height = 28
    TabOrder = 13
    inherited lcb: TxxxDBLookupCheckCombo
      Left = 84
      Width = 197
    end
  end
  inherited actList: TActionList
    Left = 160
    Top = 16
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
    Left = 216
    Top = 289
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
    Left = 256
    Top = 300
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
    Left = 264
    Top = 160
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
    Left = 240
    Top = 136
  end
end

object A009_1_SelectFile: TA009_1_SelectFile
  Left = 264
  Top = 217
  Width = 706
  Height = 240
  Caption = 'frm101_1_SelectFile'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 12
    Width = 98
    Height = 13
    Caption = '����� � �������:'
  end
  object SpeedButton1: TSpeedButton
    Left = 580
    Top = 8
    Width = 23
    Height = 22
    Hint = '������� ��� ������ �����'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
      0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
      B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
      FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
      FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
      FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
      0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
      0555555555777777755555555555555555555555555555555555}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object Memo: TMemo
    Left = 128
    Top = 8
    Width = 449
    Height = 153
    TabOrder = 0
  end
  object OpenDialog: TOpenDialog
    Filter = '����� Excel (*.xls, *.xlsx)|*.xls; *.xlsx|��� ����� (*.*)|*.*'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Title = '�������� ����� � �������'
    Left = 16
    Top = 152
  end
  object OracleQuery1: TOracleQuery
    SQL.Strings = (
      'begin'
      ' papsdf(:sdfas);'
      'end;')
    Left = 72
    Top = 152
  end
  object OracleDataSet1: TOracleDataSet
    Left = 608
    Top = 152
  end
  object oqBeforeAll: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  Pk_Bonds_Load.p_do_before_load_all_payments(:i_LOAD_DATE, :i_L' +
        'OADER);'
      'end;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000020000000C0000003A495F4C4F41445F444154450C00000000000000
      00000000090000003A495F4C4F41444552050000000000000000000000}
    Left = 608
    Top = 112
  end
end

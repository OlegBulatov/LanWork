inherited frm47_IssuerGroupDouble: Tfrm47_IssuerGroupDouble
  Left = -3
  Top = 211
  Caption = '»зменение состава группы эмитентов'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    inherited paCaptionTop: TPanel
      inherited Label1: TLabel
        Width = 167
        Caption = 'Ёмитенты, не вход€щие в группу'
      end
    end
    inherited ToolBar1: TToolBar
      inherited ToolButton2: TToolButton
        Enabled = False
      end
      inherited ToolButton3: TToolButton
        Enabled = False
      end
    end
  end
  inherited paBottom: TPanel
    inherited Panel1: TPanel
      inherited Label2: TLabel
        Width = 152
        Caption = 'Ёмитенты, вход€щие в группу'
      end
    end
  end
  inherited oqToBottom: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_Form_405.p_add_issuer_to_group(:i_ID, :i_group_ID);'
      'END;')
    Variables.Data = {
      0300000002000000050000003A495F49440400000000000000000000000B0000
      003A495F47524F55505F4944040000000000000000000000}
  end
  inherited oqToTop: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_Form_405.p_del_issuer_from_group(:i_ID, :i_group_ID);'
      'END;')
    Variables.Data = {
      0300000002000000050000003A495F49440400000000000000000000000B0000
      003A495F47524F55505F4944040000000000000000000000}
  end
end

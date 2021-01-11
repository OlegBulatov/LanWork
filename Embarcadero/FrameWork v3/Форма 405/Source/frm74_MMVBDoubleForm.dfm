inherited frm74_MMVBDouble: Tfrm74_MMVBDouble
  Left = 164
  Top = 197
  Caption = '»зменение состава эмиссий'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paTop: TPanel
    inherited paCaptionTop: TPanel
      inherited Label1: TLabel
        Width = 175
        Caption = 'Ёмиссии, прив€занные к коду ц.б.'
      end
    end
  end
  inherited paBottom: TPanel
    inherited Panel1: TPanel
      inherited Label2: TLabel
        Width = 190
        Caption = 'Ёмиссии, не прив€занные к коду ц.б.'
      end
    end
  end
  inherited oqToBottom: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_Form_405.p_del_emis_from_mmvb(:i_ID, :i_code_ID);'
      'END;'
      '')
    Variables.Data = {
      0300000002000000050000003A495F49440400000000000000000000000A0000
      003A495F434F44455F4944040000000000000000000000}
  end
  inherited oqToTop: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  Pk_Form_405.p_add_emis_to_mmvb(:i_ID, :i_code_ID);'
      'END;')
    Variables.Data = {
      0300000002000000050000003A495F49440400000000000000000000000A0000
      003A495F434F44455F4944040000000000000000000000}
  end
end

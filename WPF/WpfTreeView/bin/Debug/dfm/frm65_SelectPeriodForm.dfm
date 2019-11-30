inherited frm65_SelectPeriod: Tfrm65_SelectPeriod
  Left = 264
  Top = 217
  Caption = 'frm65_SelectPeriod'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inline fm01_Period: Tfm01_Period
    Left = 42
    Top = 8
    inherited Label1: TLabel
      Width = 50
      Caption = 'Μερÿφ'
    end
  end
  object oqPeriod: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_405_CLASSIFICATION.P_SET_PERIOD_ID ('
      '    :I_T055_ID'
      '    );'
      'END;'
      ' ')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000010000000A0000003A495F543035355F494404000000000000000000
      0000}
    Left = 136
    Top = 184
  end
end

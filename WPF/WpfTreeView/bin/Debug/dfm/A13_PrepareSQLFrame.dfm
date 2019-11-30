inherited A13_PrepareSQL: TA13_PrepareSQL
  Height = 288
  inline fmPrepareData: TA13_PrepareData [0]
    Left = 144
    Top = 8
    Width = 169
    Color = clCaptionText
    ParentColor = False
  end
  inline fmPrepareItems: TA13_PrepareItems
    Left = 144
    Top = 104
    Width = 169
    Height = 88
    Color = clCaptionText
    ParentColor = False
    TabOrder = 1
    inherited actList: TActionList
      Left = 80
    end
    inherited dsList: TDataSource
      Left = 44
    end
  end
  object oqPrepareData: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  PK_410_IIP.p_prepare_data('
      '   :i_data_sql,'
      '   :i_T055_ID_FROM,'
      '   :i_T055_ID_TO,'
      '   :i_page'
      '  );'
      'END;')
    Session = dmMain.OracleSession
    Variables.Data = {
      03000000040000000B0000003A495F444154415F53514C050000000000000000
      0000000F0000003A495F543035355F49445F46524F4D04000000000000000000
      00000D0000003A495F543035355F49445F544F04000000000000000000000007
      0000003A495F50414745040000000000000000000000}
    Left = 44
    Top = 10
  end
end

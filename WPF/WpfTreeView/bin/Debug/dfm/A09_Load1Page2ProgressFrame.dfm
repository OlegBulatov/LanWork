inherited A09_Load1Page2Progress: TA09_Load1Page2Progress
  inherited Label6: TLabel
    Width = 85
    Caption = 'Время загрузки:'
  end
  inherited lbTime: TLabel
    Left = 100
    Top = 80
  end
  inherited lbProcessName: TLabel
    Width = 374
    Caption = 
      'Идет процесс предварительной загрузки данных из выбранного файла' +
      '...'
  end
  inherited lbResult: TLabel
    Top = 96
  end
  inherited lbProgressStep: TLabel
    Width = 55
    Caption = 'Загружено'
  end
  inherited oqBeforeProcess: TOracleQuery
    SQL.Strings = (
      'begin'
      ' Pk_406_Load.p_drop_reports(:T055_ID);'
      'end;')
    Variables.Data = {
      0300000001000000080000003A543035355F4944040000000000000000000000}
    Top = 140
  end
end

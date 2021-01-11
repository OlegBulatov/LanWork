unit untInterfaces;

interface

uses db;

type
  IDoThis = interface
    procedure RunDML(const AID: Double; const ANo: Double);
  end;

  ITransDS = interface
    function GetDS: TDataSource;
  end;
implementation

end.

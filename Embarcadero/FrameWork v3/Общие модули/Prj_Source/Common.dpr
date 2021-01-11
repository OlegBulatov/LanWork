program Common;

uses
  Forms,
  untGrid in '..\Source\untGrid.pas',
  untMessages in '..\Source\untMessages.pas',
  untClasses in '..\Source\untClasses.pas',
  Matrix in '..\Source\Matrix.pas',
  untDBTree in '..\Source\untDBTree.pas',
  untDBGridExport in '..\Source\untDBGridExport.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Run;
end.

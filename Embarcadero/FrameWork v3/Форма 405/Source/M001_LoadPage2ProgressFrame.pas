unit M001_LoadPage2ProgressFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm040_LoaderFrame, Oracle, ExtCtrls, Db, OracleData, ActnList,
  StdCtrls, Gauges,fm009_ProgressFrame, ComCtrls;

type
  TM001_LoadPage2Progress = class(TfmLoader)
  private
  protected
  public
    procedure InitFrame(Sender: TObject);  override;
    procedure StartProcess; override;
  end;

var
  M001_LoadPage2Progress: TM001_LoadPage2Progress;

implementation

uses
  A000_FileDescUnt, A000_ParserExcelDM;

{$R *.DFM}

{ TM001_LoadPage1Progress }

procedure TM001_LoadPage2Progress.InitFrame(Sender: TObject);
const
  INN_KO_FIELD: array[0..5, 0..2] of string =
    (
    ('i_T183_DATE_START',        'Y', 'Дата начала действия'),
    ('i_T183_DATE_END',          'Y', 'Дата окончания действия'),
    ('i_T183_INN',               'Y', 'Организация (ИНН)'),
    ('i_T183_SHORT_NAME',        'N', 'Организация (наименование)'),
    ('i_T183_REGN',              'Y', 'Организация (рег.номер в КГРКО)'),
    ('i_T183_ACTIVE',            'N', 'Организация (индикатор действующей КО в КГРКО)')
    );
var
  i: integer;
  VField: TFileField;
begin
  inherited;
  ParserClass := TA000_ParserExcel;
  Fields := TFileFields.Create(Self);

  for i := Low(INN_KO_FIELD) to High(INN_KO_FIELD) do
    begin
    VField := Fields.Add;
    VField.ParamName := INN_KO_FIELD[i, 0];
    VField.MustBe := INN_KO_FIELD[i, 1];
    VField.FieldName := INN_KO_FIELD[i, 2];
    end;
end;

procedure TM001_LoadPage2Progress.StartProcess;
begin
  //
  inherited;
end;

end.

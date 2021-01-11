unit M002_IsuLoadPage2ProgressFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm040_LoaderFrame, Oracle, ExtCtrls, Db, OracleData, ActnList,
  StdCtrls, Gauges,fm009_ProgressFrame, ComCtrls;

type
  TM002_IsuLoadPage2Progress = class(TfmLoader)
  private
  protected
  public
    procedure InitFrame(Sender: TObject);  override;
    procedure StartProcess; override;
  end;

var
  M002_IsuLoadPage2Progress: TM002_IsuLoadPage2Progress;

implementation

uses
  A000_FileDescUnt, A000_ParserExcelDM;

{$R *.DFM}

{ TM002_IsuLoadPage2Progress }

procedure TM002_IsuLoadPage2Progress.InitFrame(Sender: TObject);
const
  ISU_FIELD: array[0..12, 0..2] of string =
    (
    ('i_T186_ISU_NAME',           'Y', '������������ ���'),
    ('i_T186_MASTER_COMPANY_LIC', 'Y', '����� �������� ��'),
    ('i_T186_SEC_TYPE',           'Y', '��� ������ ������'),
    ('i_T186_SEC_REGN',           'Y', '���.����� ������ �.�.'),
    ('i_T186_REG_DATE',           'Y', '���� �����������'),
    ('i_T186_MASTER_CHANGE_DATE', 'Y', '���� ��������� ��'),
    ('i_T186_ANN_DATE',           'Y', '���� ����������'),
    ('i_T186_CURRENCY',           'Y', '��� ������'),
    ('i_T186_LINE_NO',            'C', ''), // ����� ������
    ('i_T186_DATA_CHANGE_DATE',   'C', ''), // ���� ���������� ������� (�� �����)
    ('i_T186_LOAD_DATE',          'C', ''), // ���� ��������
    ('i_T186_LOAD_FILE',          'C', ''), // ��� ����� ��������
    ('i_T186_LOAD_USER',          'C', '')  // ��� ��������
    );
var
  i: integer;
  VField: TFileField;
begin
  inherited;
  ParserClass := TA000_ParserExcel;
  Fields := TFileFields.Create(Self);

  for i := Low(ISU_FIELD) to High(ISU_FIELD) do
    begin
    VField := Fields.Add;
    VField.ParamName := ISU_FIELD[i, 0];
    VField.MustBe := ISU_FIELD[i, 1];
    VField.FieldName := ISU_FIELD[i, 2];
    end;
end;

procedure TM002_IsuLoadPage2Progress.StartProcess;
begin
  //
  inherited;
end;

end.

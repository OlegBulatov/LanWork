unit DBDateTimePicker;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, DbCtrls, Db;

type
  TDBDateTimePicker = class(TDateTimePicker)
  private
    { private declarations }

    // ...
    FDataLink: TFieldDataLink;

    procedure dataChange(Sender: TObject);
    procedure updateData(Sender: TObject);

    // datasource property
    procedure setDataSource(Value: TDataSource);
    function  getDataSource: TDataSource;

    // datafield property
    procedure setDataField(const value : string);
    function  getDataField : string;

    // field linked to the control
    function  getField : TField;

    // enter & exit
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;

  protected
    { protected declarations }

  public
    { public declarations }

    // constructor & distructor
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;

    // change
    procedure Change; override;

    // field linked to the control
    property Field      : TField      read getField;

  published
    { published declarations }

    // data field
    property DataField  : string      read getDataField  write setDataField;
    // data source
    property DataSource : TDataSource read getDataSource write setDataSource;
  end;

procedure Register;

implementation


constructor TDBDateTimePicker.create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FDataLink                 := TFieldDataLink.Create;
  FDataLink.Control         := Self;
  FDataLink.OnDataChange    := DataChange;
  FDataLink.OnUpdateData    := UpdateData;
end;

destructor TDBDateTimePicker.destroy;
begin
  FDataLink.free;
  FDataLink := nil;

  inherited destroy;
end;

procedure TDBDateTimePicker.dataChange(Sender: TObject);
begin
  // is it a valid field ?
  if fDataLink.field <> nil then begin
    // set database date time
    dateTime := fDataLink.field.asDateTime;
  end;
end;

procedure TDBDateTimePicker.UpdateData(Sender: TObject);
begin
  // is it a valid field ?
  if fDataLink.field <> nil then begin
    // set current date to the database field 
    fDataLink.field.asDateTime := dateTime;
  end;
end;

function TDBDateTimePicker.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

procedure TDBDateTimePicker.SetDataSource(Value: TDataSource);
begin
  if not (FDataLink.DataSourceFixed and (csLoading in ComponentState)) then
    FDataLink.DataSource := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

function TDBDateTimePicker.GetDataField: string;
begin
  result := fDataLink.FieldName;
end;

procedure TDBDateTimePicker.SetDataField(const Value: string);
begin
  fDataLink.FieldName := Value;
end;

function TDBDateTimePicker.getField : TField;
begin
  result := FDataLink.field;
end;

// change
procedure TDBDateTimePicker.change;
begin
  // a change as been done to the field on database
  if fDataLink.edit then begin
    // call inherited change
    inherited Change;

    // set modifed status on data link
    fDataLink.modified;
  end;
end;

procedure TDBDateTimePicker.CMEnter(var Message: TCMEnter);
begin
  // ...
  inherited;

  // ...
  FDataLink.CanModify;
end;

procedure TDBDateTimePicker.CMExit(var Message: TCMExit);
begin
  try
    FDataLink.UpdateRecord;
  except
    SetFocus;
    raise;
  end;

  inherited;
end;

procedure Register;
begin
  RegisterComponents('Data Controls', [TDBDateTimePicker]);
end;

end.

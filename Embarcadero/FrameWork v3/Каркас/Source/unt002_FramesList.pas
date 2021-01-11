unit unt002_FramesList;

interface

uses
  classes, controls, db, unt001_Filter, fm000_Parent;

type
  TParentFrame = class(TCollectionItem)
  private
    FFrame: TfmParent;
  published
    destructor Destroy; override;
    property Frame: TfmParent read FFrame write FFrame;
  end;

  TFilterFrames = class(TCollection)
  private
    FOwner: TWinControl;
  protected
    function GetOwner: TPersistent; override;
    function GetItem(Index: Integer): TfmParent;
    procedure SetItem(Index: Integer; const Value: TfmParent);
  public
    constructor Create(Owner: TWinControl);
    function Add(AParam: TfmParent): TParentFrame;
    property Items[Index: Integer]: TfmParent read GetItem write SetItem; default;
  end;

implementation

{ TFilterFrames }

function TFilterFrames.Add(AParam: TfmParent): TParentFrame;
begin
  Result := TParentFrame(inherited Add);
  Result.Frame := AParam;
end;

constructor TFilterFrames.Create(Owner: TWinControl);
begin
  inherited Create(TParentFrame);
  FOwner := Owner;
end;

function TFilterFrames.GetItem(Index: Integer): TfmParent;
begin
  Result := TParentFrame(inherited Items[Index]).Frame;
end;

function TFilterFrames.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure TFilterFrames.SetItem(Index: Integer; const Value: TfmParent);
begin
  TParentFrame(Items[Index]).Frame := Value;
end;

{ TFilterFrame }

destructor TParentFrame.Destroy;
begin
  inherited;

end;

{ TVisitor }

(*
// Устанавливаем источник данных
procedure TVisitor.SetDataSource(const ADataSource: TDataSource);
begin
  //
end;

procedure TVisitor.VisitCheckBoxFrame(const AFrame: Tfm006_FilterCheckBox);
begin
//  raise Exception.Create('TVisitor.VisitCheckBoxFrame'); { Do not localize }
end;

procedure TVisitor.VisitLookupFrame(const AFrame: Tfm004_FilterLookUp);
begin
//  raise Exception.Create('TVisitor.VisitLookupFrame'); { Do not localize }
end;

{ TFilterVisitor }

procedure TFilterVisitor.VisitCheckBoxFrame(
  const AFrame: Tfm006_FilterCheckBox);
begin
(*
  AFrame.
  FConditions.ClearFor('OUT_DATE');

  if AFrame.CheckBox1
  if AFrame.CheckBox1.Checked then
  FConditions.SetNumbFilter('P_ID', StrToInt(fm020_Projects1.KeyValue));
  *
end;
*)

(*
procedure TFilterVisitor.VisitLookupFrame(
  const AFrame: Tfm004_FilterLookUp);
var
  VCondition: TCondition;
  VValue: TValueItem;
begin
  // удаляем фильтры по полю из списка
  FConditions.ClearFor(AFrame.KeyFieldName);

  // если флаг фильтровать не установлен то ничего не делаем
  if not AFrame.IsEnabled then Exit;
(*
  // добавляем условие
  VCondition := Conditions.Add;
  VCondition.DisplayName := VColumn.Title.Caption;
  VCondition.Condition := dc01;
  VCondition.ListName := VColumn.FieldName;

  VValue := VCondition.ValueItems.Add;
  VValue.KeyValue.ValueType := vtNumber;
  VValue.KeyValue.AsFloat := AFrame.KeyValueFloat ;
  VValue.ListValue.ValueType := vtNumber;
  VValue.ListValue.AsFloat := AFrame.KeyValueFloat;
*
end;


{ TParamVisitor }

procedure TParamVisitor.VisitCheckBoxFrame(
  const AFrame: Tfm006_FilterCheckBox);
begin
  inherited;

end;

procedure TParamVisitor.VisitLookupFrame(
  const AFrame: Tfm004_FilterLookUp);
begin
  inherited;

end;
*)

end.

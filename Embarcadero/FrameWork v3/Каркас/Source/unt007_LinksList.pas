unit unt007_LinksList;

interface

uses Classes, Forms, Db, ComCtrls, fm008_DBObjectFrame, fm021_CheckBoxFrame,
  fm020_LookUpFrame, fm033_PeriodFilterFrame, fm006_TreeFrame, unt001_Filter,
  fm035_CheckListFrame, fm023_TextEditFrame;

type
  //----------------------------------------------------------------------------
  // Тип:         Абстрактный класс
  //
  // Назначение:  Отвечает за создание и хранение DBObject
  //
  // Реализация:  В наследниках необходимо переопределить
  //                  1.  GetModelClass
  //                  2.  GetActionsClass
  //                  3.  GetListViewClass
  //----------------------------------------------------------------------------

  TConditionType = (ctStrEqual, ctStrEqualOrNull, ctStrIn, ctStrLike,
    ctNumEqual, ctNumMore, ctNumIsNull,ctNumEqualOrNull, ctNumBetween, ctNumIn);

  TLinkType = (ltRefresh, ltNoRefresh);

  TLinkObject = class(TCollectionItem)
  end;

  TTextConditionLink = class(TLinkObject)
  private
    FConditionType: TConditionType;
    FMaster: TfmTextFilter;
    FDetail: TfmDbObject;
    FDetailField: String;
    FLinkType: TLinkType;
    CbOnClick: procedure(Sender: TObject) of object;
  end;

  TCheckBoxConditionLink = class(TLinkObject)
  private
    FConditionType: TConditionType;
    FMaster: TfmCheckBox;
    FDetail: TfmDbObject;
    FDetailField: String;
    FLinkType: TLinkType;
  end;

  TLookUpLink = class(TLinkObject)
  private
    FMaster: TfmLookUp;
    FDetail: TfmDbObject;
    FDetailField: string;
    FLinkType: TLinkType;
  end;

  TLookUpCondition = class(TLinkObject)
  private
    FConditionType: TConditionType;
    FMaster: TfmLookUp;
    FDetail: TfmDbObject;
    FDetailField: String;
    FLinkType: TLinkType;
  end;

  TLookUp2Condition = class(TLinkObject)
  private
    FConditionType: TConditionType;
    FMaster: TfmPeriodFilter;
    FDetail: TfmDbObject;
    FDetailField: String;
    FLinkType: TLinkType;
  end;

  TCheckListCondition = class(TLinkObject)
  private
    FConditionType: TConditionType;
    FMaster: TfmCheckList;
    FDetail: TfmDbObject;
    FDetailField: String;
    FLinkType: TLinkType;
  end;

  TDataSetLink = class(TLinkObject)
  private
    FMaster: TfmDbObject;
    FDetail: TfmDbObject;
    FMasterField: string;
    FDetailField: string;
    FLinkType: TLinkType;
  end;

  TVariablesLink = class(TLinkObject)
  private
    FMaster: TfmDbObject;
    FDetail: TfmDbObject;
    FMasterField: string;
    FDetailField: string;
//    FLinkType: TLinkType;
  end;

  TDSLink = class(TLinkObject)
  private
    FMaster: TfmDbObject;
    FDetail: TfmLookUp;
    FMasterField: string;
    FDetailField: string;
//    FLinkType: TLinkType;
  end;

  TTreeViewLink = class(TLinkObject)
  private
    FMaster: TfmTree;
    FDetail: TfmDbObject;
    FDetailField: string;
//    FLinkType: TLinkType;
  end;

  TLinkObjectClass = class of TLinkObject;

  TLinkObjectList = class(TCollection)
  private
    FOwner: TDataModule;
    //
    procedure DoOnTextConditionChange(Sender: TObject);
    procedure DoOnCheckBoxConditionChange(Sender: TObject);
    procedure DoOnLookUpChange(Sender: TObject);
    procedure DoOnLookUpConditionChange(Sender: TObject);
    procedure DoOnCheckListConditionChange(DataSet: TDataSet);
    //procedure DoOnDSChange(DataSet: TDataSet);
    //procedure DoOnVariablesChange(DataSet: TDataSet);
    procedure DoOnDataSetChange(DataSet: TDataSet);
    //procedure DoOnTreeViewChange(Sender: TObject; Node: TTreeNode);
    //
  protected
    function GetOwner: TPersistent; override;
    function GetItem(Index: Integer): TLinkObject;
    procedure SetItem(Index: Integer; const Value: TLinkObject);
  public
    constructor Create(Owner: TDataModule);
    function AddLink(AClass: TLinkObjectClass): TLinkObject;
    //
    procedure SetDataSetVariables(DataSet: TDataSet);
    procedure GetDataSetDetailFields(DataSet: TDataSet);
    //
//    procedure LinkDataSet(const AMaster: TDataList; const ADetail: TfmLookUp; AMasterField, ADetailField: string; const ALinkType: TLinkType);
//    procedure LinkVariables(const AMaster: TDataList; const ADetail: TDataList; AMasterField, ADetailField: string; const ALinkType: TLinkType);
    procedure LinkDataList(const AMaster, ADetail: TfmDbObject; AMasterField, ADetailField: string; const ALinkType: TLinkType);

    procedure LinkTextCondition(const AConditionType: TConditionType; const AMaster: TfmTextFilter; const ADetail: TfmDbObject; const ADetailField: string; const ALinkType: TLinkType);
    procedure LinkCheckBoxCondition(const AConditionType: TConditionType; const AMaster: TfmCheckBox; const ADetail: TfmDbObject; const ADetailField: string; const ALinkType: TLinkType);

    procedure LinkLookUp(const AMaster: TfmLookUp; const ADetail: TfmDbObject; ADetailField: string; const ALinkType: TLinkType);
    procedure LinkLookUpCondition(const AConditionType: TConditionType; const AMaster: TfmLookUp; const ADetail: TfmDbObject; const ADetailField: string; const ALinkType: TLinkType);
    procedure LinkLookUp2Condition(const AConditionType: TConditionType; const AMaster: TfmPeriodFilter; const ADetail: TfmDbObject; const ADetailField: string; const ALinkType: TLinkType);

    procedure LinkCheckListCondition(const AConditionType: TConditionType; const AMaster: TfmCheckList; const ADetail: TfmDbObject; const ADetailField: string; const ALinkType: TLinkType);

//    procedure LinkTreeView(const AMaster: TfmTree; const ADetail: TDataList; ADetailField: string; const ALinkType: TLinkType);
    //
    property Items[Index: Integer]: TLinkObject read GetItem write SetItem; default;
  end;

implementation

uses SysUtils, OracleData, Dialogs, StdCtrls, untParams;

{ TLinkObjectList }

function TLinkObjectList.AddLink(AClass: TLinkObjectClass): TLinkObject;
begin
  Result := AClass.Create(Self);
end;

constructor TLinkObjectList.Create(Owner: TDataModule);
begin
  inherited Create(TLinkObject);
  FOwner := Owner;
end;

procedure TLinkObjectList.DoOnDataSetChange(DataSet: TDataSet);
var
  i: Integer;
  VLink: TDataSetLink;
begin
  if DataSet.ControlsDisabled then Exit;

  for i := 0 to Count - 1 do
    begin
    if Items[i] is TDataSetLink then
      begin
      VLink := TDataSetLink(Items[I]);
      if (VLink.FLinkType = ltRefresh) and (VLink.FMaster.DataSet = DataSet) then
	VLink.FDetail.RefreshData;
     end;
    end;
end;

procedure TLinkObjectList.SetDataSetVariables(DataSet: TDataSet);
var
  i: Integer;
  Link: TLinkObject;
begin
  //
  for i := 0 to Count - 1 do
    begin
    Link := Items[i];
    if Link is TDataSetLink then
      begin
      with Link as TDataSetLink do
      	begin
      	if FDetail.DataSet = DataSet then
      	  FDetail.odsList.SetVariable(FDetailField, FMaster.DataSet[FMasterField]);
      	end;
      end

    else if Link is TTextConditionLink then
    begin
      with Link as TTextConditionLink do
      begin
        if FDetail.DataSet = DataSet then
        begin
          FDetail.VDataSet.Conditions.ClearFor(FDetailField);
          if FMaster.IsEnabled then
          begin
            if FConditionType = ctStrLike then
            begin
              FDetail.VDataSet.Conditions.AddLikeFilter(FDetailField, '%' + FMaster.KeyValue + '%');
	    end else
	    if FConditionType = ctNumMore then
            begin
	      FDetail.VDataSet.Conditions.AddFilter04(FDetailField, FMaster.KeyValue)
	    end
          end;
        end;
      end;
    end else
    if Link is TCheckBoxConditionLink then
    begin
      with Link as TCheckBoxConditionLink do
      begin
	if FDetail.DataSet = DataSet then
        begin
	  FDetail.VDataSet.Conditions.ClearFor(FDetailField);
	  if FMaster.IsChecked then
          begin
	    if FConditionType = ctNumEqual then
            begin
	      FDetail.VDataSet.Conditions.AddFilter01(FDetailField, FMaster.KeyValue)
	    end else
	    if FConditionType = ctNumMore then
            begin
	      FDetail.VDataSet.Conditions.AddFilter04(FDetailField, FMaster.KeyValue)
	    end else
            if FConditionType = ctStrEqual then
            begin
	      FDetail.VDataSet.Conditions.AddFilter02(FDetailField, FMaster.KeyValue)
            end else
            if FConditionType = ctNumIsNull then
            begin
	      FDetail.VDataSet.Conditions.AddIsNullFilter(FDetailField);
            end;
          end;
        end;
      end;
    end

    else if Link is TLookUpLink then
      begin
      with Link as TLookUpLink do
	      begin
	      if FDetail.DataSet = DataSet then
	        FDetail.odsList.SetVariable(FDetailField, FMaster.KeyValue);
	      end;
      end

    else if Link is TLookUpCondition then
      begin
      with Link as TLookUpCondition do
	      begin
        if FDetail.DataSet = DataSet then
          begin
          FDetail.VDataSet.Conditions.ClearFor(FDetailField);
          if FMaster.IsChecked then
//	  if (FMaster.cb.State = cbChecked) or (FMaster.cb.State = cbGrayed) then
            begin
            if FConditionType = ctNumEqual then
              FDetail.VDataSet.Conditions.AddFilter01(FDetailField, FMaster.KeyValueFloat)
            else if FConditionType = ctNumMore then
              FDetail.VDataSet.Conditions.AddFilter04(FDetailField, FMaster.KeyValueFloat)
            else if FConditionType = ctNumEqualOrNull then
              FDetail.VDataSet.Conditions.AddNumOrNullFilter(FDetailField, FMaster.KeyValueFloat)
            else if FConditionType = ctNumIn then
              FDetail.VDataSet.Conditions.AddNumInFilter(FDetailField, untParams.TFloatArray(FMaster.KeyValues))
            else if FConditionType = ctStrEqual then
              FDetail.VDataSet.Conditions.AddFilter02(FDetailField, FMaster.KeyValueStr)
            else if FConditionType = ctStrEqualOrNull then
              FDetail.VDataSet.Conditions.AddStrOrNullFilter(FDetailField, FMaster.KeyValueStr)
            else if FConditionType = ctStrIn then
              FDetail.VDataSet.Conditions.AddStrInFilter(FDetailField, untParams.TStrArray(FMaster.KeyValuesStr))
            end;
          end;
	      end;
      end
    else if Link is TLookUp2Condition then
      begin
      with Link as TLookUp2Condition do
	      begin
	      if FDetail.DataSet = DataSet then
	        begin
	        FDetail.VDataSet.Conditions.ClearFor(FDetailField);
	        if FMaster.IsChecked then
	          if FConditionType = ctNumBetween then
	            FDetail.VDataSet.Conditions.AddNumBetweenFilter(FDetailField, FMaster.KeyValueFloat, FMaster.KeyValue2Float);
	        end;
	      end;
      end
    else if Link is TCheckListCondition then
      begin
      with Link as TCheckListCondition do
	begin
	if FDetail.DataSet = DataSet then
	  begin
	  FDetail.VDataSet.Conditions.ClearFor(FDetailField);
	  if FMaster.IsEnabled then
	    if FConditionType = ctStrIn then
	      FDetail.VDataSet.Conditions.AddStrInFilter(FDetailField, FMaster.KeyValuesStr)
	  end;
	end;
      end

    else if Link is TTreeViewLink then
      begin
      with Link as TTreeViewLink do
	begin
	if FDetail.DataSet = DataSet then
	  FDetail.odsList.SetVariable(FDetailField, FMaster.ID);
	end;
      end

    else if Link is TDSLink then
      begin
      with Link as TDSLink do
	begin
	if FDetail.odsList = DataSet then
	  FDetail.odsList.SetVariable(FDetailField, FMaster.DataSet[FMasterField]);
	end;
      end
    else if Link is TVariablesLink then
      begin
      with Link as TVariablesLink do
	begin
	if FDetail.DataSet = DataSet then
	  FDetail.odsList.SetVariable(FDetailField, FMaster.odsList.GetVariable(FMasterField));
	end;
      end;
    end;
end;

procedure TLinkObjectList.DoOnTextConditionChange(Sender: TObject);
var
  i: Integer;
  VLink: TTextConditionLink;
begin
  for i := 0 to Count - 1 do
    begin
    if Items[i] is TTextConditionLink then
      begin
      VLink := TTextConditionLink(Items[i]);
      if Assigned(VLink.CbOnClick) then
        VLink.CbOnClick(Sender);
      if (VLink.FLinkType = ltRefresh) and (VLink.FMaster.cb = Sender) then
	      VLink.FDetail.RefreshData;
      end;
    end;
end;

procedure TLinkObjectList.DoOnCheckBoxConditionChange(Sender: TObject);
var
  i: Integer;
  VLink: TCheckBoxConditionLink;
begin
  for i := 0 to Count - 1 do
    begin
    if Items[i] is TCheckBoxConditionLink then
      begin
      VLink := TCheckBoxConditionLink(Items[i]);
      if (VLink.FLinkType = ltRefresh) and (VLink.FMaster.cb = Sender) then
	      VLink.FDetail.RefreshData;
      end;
    end;
end;

procedure TLinkObjectList.DoOnLookUpChange(Sender: TObject);
var
  i: Integer;
  VLink: TLookUpLink;
begin
  for i := 0 to Count - 1 do
    begin
    if Items[i] is TLookUpLink then
      begin
      VLink := TLookUpLink(Items[i]);
      if (VLink.FLinkType = ltRefresh) and (VLink.FMaster.lcb = Sender) then
	      VLink.FDetail.RefreshData;
      end;
    end;
end;

procedure TLinkObjectList.DoOnLookUpConditionChange(Sender: TObject);
var
  i: Integer;
  VLink: TLookUpCondition;
begin
  for i := 0 to Count - 1 do
    begin
    if Items[i] is TLookUpCondition then
      begin
      VLink := TLookUpCondition(Items[i]);
      if (VLink.FLinkType = ltRefresh) and (VLink.FMaster.lcb = Sender) then
	      VLink.FDetail.RefreshData;
      end;
    end;
end;

procedure TLinkObjectList.DoOnCheckListConditionChange(DataSet: TDataSet);
var
  i: Integer;
  VLink: TCheckListCondition;
begin
  for i := 0 to Count - 1 do
    begin
    if Items[i] is TCheckListCondition then
      begin
      VLink := TCheckListCondition(Items[i]);
      if (VLink.FLinkType = ltRefresh) and (VLink.FMaster.odsList = DataSet) then
	VLink.FDetail.RefreshData;
      end;
    end;
end;

function TLinkObjectList.GetItem(Index: Integer): TLinkObject;
begin
  Result := TLinkObject(inherited Items[Index]);
end;

function TLinkObjectList.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure TLinkObjectList.LinkDataList(const AMaster, ADetail: TfmDbObject;
  AMasterField, ADetailField: string; const ALinkType: TLinkType);
var
  VLink: TDataSetLink;
begin
  // связываем два DataList'a
  VLink := AddLink(TDataSetLink) as TDataSetLink;
  VLink.FMaster := AMaster;
  VLink.FDetail := ADetail;
  VLink.FMasterField := AMasterField;
  VLink.FDetailField := ADetailField;
  VLink.FLinkType := ALinkType;

  (*
  if ADetail.DataSet.BeforeOpen <> Self.DoBeforeOpen then
  begin

  end;
  *)

  AMaster.DataSet.AfterScroll := DoOnDataSetChange;
//  ADetail.DataSet.BeforeOpen := DoBeforeOpen;
end;

procedure TLinkObjectList.LinkTextCondition(
  const AConditionType: TConditionType; const AMaster: TfmTextFilter;
  const ADetail: TfmDbObject; const ADetailField: string;
  const ALinkType: TLinkType);
var
  VLink: TTextConditionLink;
begin
  // Создаем линк
  VLink := AddLink(TTextConditionLink) as TTextConditionLink;
  VLink.FConditionType := AConditionType;
  VLink.FMaster := AMaster;
  VLink.FDetail := ADetail;
  VLink.FDetailField := ADetailField;
  VLink.FLinkType := ALinkType;

  if Assigned(AMaster.cb.OnClick) then
    VLink.CbOnClick := AMaster.cb.OnClick;
  AMaster.cb.OnClick := DoOnTextConditionChange;
//  ADetail.DataSet.BeforeOpen := DoBeforeOpen;
end;

procedure TLinkObjectList.LinkCheckBoxCondition(
  const AConditionType: TConditionType; const AMaster: TfmCheckBox;
  const ADetail: TfmDbObject; const ADetailField: string;
  const ALinkType: TLinkType);
var
  VLink: TCheckBoxConditionLink;
begin
  // Создаем линк
  VLink := AddLink(TCheckBoxConditionLink) as TCheckBoxConditionLink;
  VLink.FConditionType := AConditionType;
  VLink.FMaster := AMaster;
  VLink.FDetail := ADetail;
  VLink.FDetailField := ADetailField;
  VLink.FLinkType := ALinkType;

  AMaster.cb.OnClick := DoOnCheckBoxConditionChange;
//  ADetail.DataSet.BeforeOpen := DoBeforeOpen;
end;

procedure TLinkObjectList.LinkLookUp(const AMaster: TfmLookUp;
  const ADetail: TfmDbObject; ADetailField: string;
  const ALinkType: TLinkType);
var
  VLink: TLookUpLink;
begin
  // связываем два DataList'a
  VLink := AddLink(TLookUpLink) as TLookUpLink;
  VLink.FMaster := AMaster;
  VLink.FDetail := ADetail;
  VLink.FDetailField := ADetailField;
  VLink.FLinkType := ALinkType;

  (*
  if AMaster.DataSet.AfterScroll <> Self.DoAfterScroll then
  begin
  end;
  *)

  AMaster.lcb.OnChange := DoOnLookUpChange;
//  ADetail.DataSet.BeforeOpen := DoBeforeOpen;
end;

procedure TLinkObjectList.LinkLookUpCondition(
  const AConditionType: TConditionType; const AMaster: TfmLookUp;
  const ADetail: TfmDbObject; const ADetailField: string;
  const ALinkType: TLinkType);
var
  VLink: TLookUpCondition;
begin
  // связываем два DataList'a
  VLink := AddLink(TLookUpCondition) as TLookUpCondition;
  VLink.FConditionType := AConditionType;
  VLink.FMaster := AMaster;
  VLink.FDetail := ADetail;
  VLink.FDetailField := ADetailField;
  VLink.FLinkType := ALinkType;

  (*
  if AMaster.DataSet.AfterScroll <> Self.DoAfterScroll then
  begin
  end;
  *)

  AMaster.lcb.OnChange := DoOnLookUpConditionChange;
//  ADetail.DataSet.BeforeOpen := DoBeforeOpen;
end;

procedure TLinkObjectList.LinkLookUp2Condition(
  const AConditionType: TConditionType; const AMaster: TfmPeriodFilter;
  const ADetail: TfmDbObject; const ADetailField: string;
  const ALinkType: TLinkType);
var
  VLink: TLookUp2Condition;
begin
  // связываем два DataList'a
  VLink := AddLink(TLookUp2Condition) as TLookUp2Condition;
  VLink.FConditionType := AConditionType;
  VLink.FMaster := AMaster;
  VLink.FDetail := ADetail;
  VLink.FDetailField := ADetailField;
  VLink.FLinkType := ALinkType;

  (*
  if AMaster.DataSet.AfterScroll <> Self.DoAfterScroll then
  begin
  end;
  *)

  AMaster.lcb.OnChange := DoOnLookUpConditionChange;
//  ADetail.DataSet.BeforeOpen := DoBeforeOpen;
end;

procedure TLinkObjectList.LinkCheckListCondition(
  const AConditionType: TConditionType; const AMaster: TfmCheckList;
  const ADetail: TfmDbObject; const ADetailField: string;
  const ALinkType: TLinkType);
var
  VLink: TCheckListCondition;
begin
  // связываем два DataList'a
  VLink := AddLink(TCheckListCondition) as TCheckListCondition;
  VLink.FConditionType := AConditionType;
  VLink.FMaster := AMaster;
  VLink.FDetail := ADetail;
  VLink.FDetailField := ADetailField;
  VLink.FLinkType := ALinkType;

  (*
  if AMaster.DataSet.AfterScroll <> Self.DoAfterScroll then
  begin
  end;
  *)

  AMaster.odsList.AfterPost := DoOnCheckListConditionChange;
//  ADetail.DataSet.BeforeOpen := DoBeforeOpen;
end;

procedure TLinkObjectList.SetItem(Index: Integer; const Value: TLinkObject);
begin
  Items[Index].Assign(Value);
end;

{
procedure TLinkObjectList.LinkTreeView(const AMaster: TfmTree;
  const ADetail: TDataList; ADetailField: string;
  const ALinkType: TLinkType);
var
  VLink: TTreeViewLink;
begin
  // связываем два DataList'a
  VLink := AddLink(TTreeViewLink) as TTreeViewLink;
  VLink.FMaster := AMaster;
  VLink.FDetail := ADetail;
  VLink.FDetailField := ADetailField;
  VLink.FLinkType := ALinkType;

  (*
  if AMaster.DataSet.AfterScroll <> Self.DoAfterScroll then
  begin
  end;
  *)

  AMaster.tvList.OnChange := DoOnTreeViewChange;
end;
}

(*
procedure TLinkObjectList.DoOnTreeViewChange(Sender: TObject;
  Node: TTreeNode);
//var
//  I: Integer;
//  VLink: TTreeViewLink;
begin
{
  //
  for I := 0 to Count - 1 do
  begin
    if Items[I] is TTreeViewLink then
    begin
      VLink := TTreeViewLink(Items[I]);
      if (VLink.FLinkType = ltRefresh) and (VLink.FMaster.tvList = Sender) then
      begin
	VLink.FDetail.RefreshData;
      end;
    end;
  end;
  }
end;
*)

procedure TLinkObjectList.GetDataSetDetailFields(DataSet: TDataSet);
//var
//  I: Integer;
//  VLink: TDataSetLink;
//  VLookUpLink: TLookUpLink;
//  VTreeLink: TTreeViewLink;
begin
{
  //
  for I := 0 to Count - 1 do
  begin
    if Items[I] is TDataSetLink then
    begin
      VLink := TDataSetLink(Items[I]);
      if VLink.FDetail.DataSet = DataSet then
      begin
	DataSet[VLink.FDetailField] := VLink.FMaster.DataSet[VLink.FMasterField];
      end;
    end else
    if Items[I] is TLookUpLink then
    begin
      VLookUpLink := TLookUpLink(Items[I]);
      if VLookUpLink.FDetail.DataSet = DataSet then
      begin
	DataSet[VLink.FDetailField] := VLookUpLink.FMaster.KeyValue;
      end;
    end else
    if Items[I] is TTreeViewLink then
    begin
      VTreeLink := TTreeViewLink(Items[I]);
      if VTreeLink.FDetail.DataSet = DataSet then
      begin
	DataSet[VLink.FDetailField] := VTreeLink.FMaster.ID;
      end;
    end;
  end;
  }
end;

{
procedure TLinkObjectList.LinkDataSet(const AMaster: TDataList;
  const ADetail: TfmLookUp; AMasterField, ADetailField: string;
  const ALinkType: TLinkType);
var
  VLink: TDSLink;
begin
  // связываем два DataList'a
  VLink := AddLink(TDSLink) as TDSLink;
  VLink.FMaster := AMaster;
  VLink.FDetail := ADetail;
  VLink.FMasterField := AMasterField;
  VLink.FDetailField := ADetailField;
  VLink.FLinkType := ALinkType;

  AMaster.DataSet.AfterScroll := DoOnDSChange;
//  ADetail.DataSet.BeforeOpen := DoBeforeOpen;
end;
}

(*
procedure TLinkObjectList.DoOnDSChange(DataSet: TDataSet);
//var
//  I: Integer;
//  VLink: TDSLink;
begin
{
  if DataSet.ControlsDisabled then Exit;

  for I := 0 to Count - 1 do
  begin
    if Items[I] is TDSLink then
    begin
      VLink := TDSLink(Items[I]);
      if (VLink.FLinkType = ltRefresh) and (VLink.FMaster.DataSet = DataSet) then
      begin
	VLink.FDetail.InitValues;
	if Assigned(VLink.FDetail.lcbList.OnChange) then
	begin
	  VLink.FDetail.lcbList.OnChange(VLink.FDetail.lcbList);
	end;
      end;
    end;
  end;
  }
end;
*)

{
procedure TLinkObjectList.LinkVariables(const AMaster, ADetail: TDataList;
  AMasterField, ADetailField: string; const ALinkType: TLinkType);
var
  VLink: TVariablesLink;
begin
  // связываем два DataList'a
  VLink := AddLink(TVariablesLink) as TVariablesLink;
  VLink.FMaster := AMaster;
  VLink.FDetail := ADetail;
  VLink.FMasterField := AMasterField;
  VLink.FDetailField := ADetailField;
  VLink.FLinkType := ALinkType;

  (*
  if ADetail.DataSet.BeforeOpen <> Self.DoBeforeOpen then
  begin

  end;
  *)

  AMaster.DataSet.AfterScroll := DoOnVariablesChange;
//  ADetail.DataSet.BeforeOpen := DoBeforeOpen;
end;
 }

 (*
procedure TLinkObjectList.DoOnVariablesChange(DataSet: TDataSet);
//var
//  I: Integer;
//  VLink: TVariablesLink;
begin
{
  if DataSet.ControlsDisabled then Exit;

  for I := 0 to Count - 1 do
  begin
    if Items[I] is TVariablesLink then
    begin
      VLink := TVariablesLink(Items[I]);
      if (VLink.FLinkType = ltRefresh) and (VLink.FMaster.DataSet = DataSet) then
      begin
	VLink.FDetail.RefreshData;
      end;
    end;
  end;
  }
end;
*)

end.

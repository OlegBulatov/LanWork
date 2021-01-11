unit fm003_FilterFrame;

interface

uses Classes, Controls, StdCtrls, ExtCtrls, ActnList, unt001_Filter,
  fm000_Parent, unt002_FramesList;


type
  //----------------------------------------------------------------------------
  // Тип:         Абстрактный класс
  //
  // Назначение:  Отвечает за отображение элементов фильтра
  //              Представляет собой контейнер элементов фильтра
  //              LookUp, CheckBox, Edit и т.п.
  //              Переадресует вызовы своим элементам
  //
  // Реализация:  В наследниках необходимо
  //                  1.  Положить на Frame наследников Tfm004_FilterLookUp
  //                      например Tfm004_FilterLookUp и т.п.
  //----------------------------------------------------------------------------
  TfmFilterFrame = class(TfmParent)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    paFilterItems: TPanel;
    Button1: TButton;
  private
//    FFilterFrames: TFilterFrames;
  public
    //
//    procedure InitFilterItems;
    //
//    procedure RetrieveConditions(const AConditions: TConditions);
    //
//    procedure RegisterFilterItem(const AFrame: TfmComposite);
    //
//    procedure RegisterFilterItems(const AControl: TControl);
  end;

var
  fmFilterFrame: TfmFilterFrame;

implementation

{$R *.DFM}

{ Tfm003_Filter }

{
procedure TfmFilterFrame.InitFilterItems;
var
  I: Integer;
begin
  // Инициализируем элементы фильтра значениями по умолчанию
  for I := 0 to FFilterFrames.Count - 1 do
    FFilterFrames[I].InitFrame(Self);
end;
}

{
procedure TfmFilterFrame.RetrieveConditions(const AConditions: TConditions);
var
  I: Integer;
begin
  // Переносим уловия фильтра в AConditions
  for I := 0 to FFilterFrames.Count - 1 do
  begin
    FFilterFrames[I].RetrieveConditions(AConditions);
  end;
end;
}

{
procedure TfmFilterFrame.RegisterFilterItems(const AControl: TControl);
var
  i: Integer;
begin
  // Автоматически регистрируем элементы фильтра
  FFilterFrames.Clear;

  //for I:= 0 to paFilterItems.ControlCount -1 do

  for i:= 0 to AControl.ControlCount -1 do
    begin
    if AControl.Controls[I] is TfmComposite then
      begin
      FFilterFrames.Add(TfmComposite(paFilterItems.Controls[I]));
      end;
  end;
end;
}

{
procedure TfmFilterFrame.RegisterFilterItem(const AFrame: TfmComposite);
begin
  // Регистрируем новый элемент
  FFilterFrames.Add(AFrame);
end;
}

end.

unit fm001_Composite;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fm000_Parent, unt001_Filter, unt203_Reports, unt205_Params, ActnList;

type
  TfmComposite = class(TfmParent)
  private
    FParam: TRepParam;
  protected
    //
    procedure SetFilters; virtual;
  public
    //
    procedure InitValues; virtual;
    //
    procedure RetrieveConditions(const AConditions: TConditions); virtual;
    // для отчетов
    procedure GetParamsValues; virtual; abstract;
    procedure SetParamsValues; virtual; abstract;
    //
    property Param: TRepParam read FParam write FParam;
  end;

  TfmCompositeClass = class of TfmComposite;

var
  fmComposite: TfmComposite;

implementation

{$R *.DFM}

{ TfmComposite }

procedure TfmComposite.InitValues;
begin
  //инициализируем компоненты значениеями перед отображением
end;

procedure TfmComposite.RetrieveConditions(const AConditions: TConditions);
begin
  // заполняем условия фильтра
end;

procedure TfmComposite.SetFilters;
begin
  // устанавливаем фильтры, например
  //
  // DataSet.SetVariable('M027_ID', odsVersion['M027_ID']);
end;

end.

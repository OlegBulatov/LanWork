{******************************************************************************
   Название:       frm04_EditForm
   Назначение:	   форма редактирования - предок всех форм редактирования

   ИСПРАВЛЕНИЯ:
   Версия     Дата        Автор            Описание
   ---------  ----------  ---------------  ------------------------------------
   1.0        17.09.2004  Долженко		   1. Создание модуля
*******************************************************************************}

unit frm04_EditForm;

interface

uses
  Forms, Classes, ActnList, StdCtrls, Controls, ExtCtrls,
  frm03_DialogForm, Db, System.Actions;

type
  TEditType = (etBrowse, etInsert, etEdit, etDelete);

  TChangeEvent = function: Boolean of object;

  Tfrm04_Edit = class(Tfrm03_Dialog)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FEditType: TEditType;
    FOnSaveChange: TChangeEvent;
    FOnCancelChange: TChangeEvent;
  protected
    procedure IsNext(var AKey: Char);
    //
    procedure SetDataSource(Value: TDataSource); virtual;
    function SaveChange: Boolean; override;
    function CancelChange: Boolean; override;
  public
    property EditType: TEditType read FEditType write FEditType;
    property OnSaveChange: TChangeEvent read FOnSaveChange write FOnSaveChange;
    property OnCancelChange: TChangeEvent read FOnCancelChange write FOnCancelChange;
    property DataSource: TDataSource write SetDataSource;
    //
    class function Instance: Tfrm04_Edit;
  end;

var
  frm04_Edit: Tfrm04_Edit;

implementation

uses Messages;

{$R *.DFM}

{ TfrmListEditForm }

function Tfrm04_Edit.CancelChange: Boolean;
begin
  if Assigned(FOnCancelChange) then
  begin
    Result := FOnCancelChange;
  end else
  begin
    Result := inherited CancelChange;
  end;
end;

class function Tfrm04_Edit.Instance: Tfrm04_Edit;
begin
  Result := Tfrm04_Edit(inherited Instance);
end;

procedure Tfrm04_Edit.IsNext(var AKey: Char);
begin
  // по Enter переходим на другой конрол
  if (AKey = #13) then
  begin
    AKey := #0;
    Self.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

function Tfrm04_Edit.SaveChange: Boolean;
begin
  if Assigned(FOnSaveChange) then
  begin
    Result := FOnSaveChange;
  end else
  begin
    Result := inherited SaveChange;
  end;
end;

procedure Tfrm04_Edit.SetDataSource(Value: TDataSource);
begin
//
end;

procedure Tfrm04_Edit.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // по Enter переходим на другой конрол
  if (Key = #13) then
  begin
    Key := #0;
    Self.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

end.

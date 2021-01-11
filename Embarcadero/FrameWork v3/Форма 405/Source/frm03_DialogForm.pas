{******************************************************************************
   Название:       frm03_DialogForm
   Назначение:	   форма диалога - предок всех форм диалогов

   ИСПРАВЛЕНИЯ:
   Версия     Дата        Автор            Описание
   ---------  ----------  ---------------  ------------------------------------
   1.0        17.09.2004  Долженко		   1. Создание модуля
*******************************************************************************}

unit frm03_DialogForm;

interface

uses
  frm00_ParentForm, Classes, ActnList, StdCtrls, Controls, ExtCtrls,
  System.Actions;

type
  Tfrm03_Dialog = class(Tfrm00_Parent)
    ActionList1: TActionList;
    actSave: TAction;
    actCancel: TAction;
    Panel2: TPanel;
    Panel3: TPanel;
    OKBtn: TButton;
    CancelBtn: TButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actCancelUpdate(Sender: TObject);
    procedure actSaveUpdate(Sender: TObject);
  private
  protected
    function SaveChange: Boolean; virtual;
    function CancelChange: Boolean; virtual;
  public
  end;

var
  frm03_Dialog: Tfrm03_Dialog;

implementation

{$R *.DFM}

procedure Tfrm03_Dialog.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  // закрываем форму если не было сбоя при сохранении изменений
  // или отмене изменений
  CanClose := False;
  if ModalResult = mrOk then
  begin
    CanClose := SaveChange;
  end else
  begin
    CanClose := CancelChange;
  end;
end;

function Tfrm03_Dialog.CancelChange: Boolean;
begin
  Result := True;
end;

function Tfrm03_Dialog.SaveChange: Boolean;
begin
  Result := True;
end;

procedure Tfrm03_Dialog.actCancelUpdate(Sender: TObject);
begin
  actCancel.Enabled := True;
end;

procedure Tfrm03_Dialog.actSaveUpdate(Sender: TObject);
begin
  actSave.Enabled := True;
end;

end.
